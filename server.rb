require 'rubygems'
require 'sinatra'
require 'sandbox'
require "uri"
require 'yaml'
require 'net/http'
require 'digest/sha1'
require(File.dirname(__FILE__) + "/lsl_data.rb")

set :port, 80
helpers do
  def protected!
    unless authorized?
      response['WWW-Authenticate'] = %(Basic realm="Restricted Area")
      throw(:halt, [401, "Not authorized\n"])
    end
  end
  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    if @auth.provided? && @auth.basic? && @auth.credentials
    	settings.users.values.each do |user|
    		if @auth.credentials == [user.username,user.password]
    			@user = user
    			return true
    		end
    	end
    end
    return false
  end
	def valid_apikey?
		key = params["apikey"]
		if !(settings.users.keys.include? key)
			throw(:halt, [401, "Not authorized\n"])
		end
	end
	def get_user
		return settings.users[params["apikey"]]
	end
end
class User
	attr_accessor :username, :password, :apikey, :sandboxes, :scripts
	def initialize user, pass
		@username = user
		@password = pass
		@apikey=Digest::SHA1.hexdigest(user+pass)
		@sandboxes={}
		@scripts={}
		puts "Created user: #{user}. APIKEY: #{@apikey}."
	end
end

default_users = [["admin","admin"]]
users = {}
default_users.each do |cred|
	user = User.new(cred[0].to_s,cred[1].to_s)
	users.store(user.apikey,user)
end
set :users, users

get '/' do
	erb :index
end
get '/apply/' do
	erb :redirect
end
get '/control/?' do
	protected!
	@name = @user.username
	erb :control
end

# API System
get '/api/:apikey/info' do
	valid_apikey?
	key = params["apikey"]
	user = settings.users[params["apikey"]]
	msg = "Api-Key: #{key}<br/>Owner: #{user.username}<br/>#{user.sandboxes.to_s}"
	return msg
end

get '/api/:apikey/:uuid/init/:url/:sandbox' do
	valid_apikey?
	uuid = params["uuid"]
	puts params["sandbox"]
	user = get_user
	url = URI.unescape(params[:url])
	box = user.sandboxes[params["sandbox"]]
	if box
		user.scripts.store(uuid,box)
		box.eval("add_object(\"#{uuid}\",\"#{url}\")")
	else
		puts "Creating new sandbox for: #{user.username}. UUID: #{uuid}"
		sbox = Sandbox.safe
		sbox.require(File.dirname(__FILE__) + "/lsl_data.rb")
		sbox.require(File.dirname(__FILE__) + "/scripts/default.rb")
		sbox.eval("add_object(\"#{uuid}\",\"#{url}\")")
		user.sandboxes.store(params["sandbox"], sbox)
		sbox.activate!
		user.scripts.store(uuid,sbox)
	end
end
get '/api/:apikey/:uuid/event/:event/*' do
	valid_apikey?
	uuid = params["uuid"]
	event = params["event"]
	data = params[:splat][0]
	event_args = {}
	if data!="nil"
		data.split("/").each do |b|
			parts = b.split("|")
			if parts[0][0..1]=="s_"
				key = parts[0][2..(parts[0].length-1)].to_sym
				values = unserialize_list(URI.unescape(parts[1]))[0]
				event_args.store(key,values)
			else
				key = parts[0].to_sym
				values = unserialize_list(URI.unescape(parts[1]))
				event_args.store(key,values)
			end
		end
	end
	cmd = "get_object(\"#{uuid}\").#{event}(#{event_args})"
	get_user.scripts[uuid].eval(cmd)
end
get '/api/:apikey/:uuid/exec/:code' do
	valid_apikey?
	uuid = params["uuid"]
	get_user.scripts[uuid].eval(URI.unescape(params["code"]))
end
