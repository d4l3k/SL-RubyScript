require 'rubygems'
require 'sinatra'
require 'sandbox'
require 'httparty'
require "uri"

set :port, 80

set :sandbox, {}
set :apikeys, {"da43c2e0bb1f724e650535165731ecac"=>"Second Life Test"}

get '/api/:apikey/info' do
	if settings.apikeys.keys.include? params["apikey"]
		msg = "Api-Key: #{params["apikey"]}<br/>Owner: #{settings.apikeys[params["apikey"]]}<br/>#{settings.sandbox.to_s}"
		return msg
	else
		return "Access Denied"
	end
end

get '/api/:apikey/:uuid/init/:url' do
	if settings.apikeys.keys.include? params["apikey"]
		uuid = params["uuid"]
		puts "Creating new sandbox for: #{settings.apikeys[params["apikey"]]}. UUID: #{params["uuid"]}"
		puts headers.to_s
		url = URI.unescape(params[:url])
		script = SLScript.new(uuid, url)
		settings.sandbox.store(uuid, script)
		settings.sandbox[uuid].sandbox.eval("$objects[0].llSay 0, 'Sandbox Initialized!'")
	else
		return "Access Denied"
	end
end
get '/api/:apikey/:uuid/event/:event/:data' do
	if settings.apikeys.keys.include? params["apikey"]
		uuid = params["uuid"]
		event = params["event"]
		data = params["data"]
		event_args = {}
		if data!="nil"
			data.split("/").each do |b|
				parts = b.split("|")
				if parts[0](0..1)=="s_"
					key = parts[0](2..(parts[0].length-1)).to_sym
					values = unserialize_list(URI.unescape(parts[1]))[0]
					event_args.store(key,values)
				else
					key = parts[0].to_sym
					values = unserialize_list(URI.unescape(parts[1]))
					event_args.store(key,values)
				end
			end
		end
		settings.sandbox[uuid].sandbox.eval("$objects[0].#{event}(#{event_args})")
	else
		return "Access Denied"
	end
end
get '/api/:apikey/:uuid/exec/:code' do
	if settings.apikeys.keys.include? params["apikey"]
		uuid = params["uuid"]
		settings.sandbox[uuid].sandbox.eval(URI.unescape(params["code"]))
	else
		return "Access Denied"
	end
end

class SLScript
	attr_accessor :sandbox
	def initialize uuid, url
		@uuid = uuid
		@url = url
		@sandbox = Sandbox.safe
		require(File.dirname(__FILE__) + "/lsl_data.rb")
		@sandbox.require(File.dirname(__FILE__) + "/lsl_data.rb")
		@sandbox.eval("$objects[0]=SLObject.new(\""+uuid+"\",\""+url+"\")")
		@sandbox.load(File.dirname(__FILE__) + "/scripts/default.rb")
		@sandbox.activate!
	end
end
