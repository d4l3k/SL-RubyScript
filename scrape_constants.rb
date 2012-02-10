require "rubygems"
require "matrix"
require "httparty"
links = []

sources = ["http://wiki.secondlife.com/wiki/Category:LSL_Constants","http://wiki.secondlife.com/w/index.php?title=Category:LSL_Constants&from=PARCEL_FLAG_USE_ACCESS_GROUP","http://wiki.secondlife.com/w/index.php?title=Category:LSL_Constants&from=VEHICLE_FLAG_LIMIT_ROLL_ONLY"]
sources.each do |src|
	data = HTTParty.get(src)
	split = data.split("<a href=\"")
	split.delete_at(0)
	split.each do |dat|
		split2 = dat.split("\"")
		str = split2[0][6..(split2[0].size-1)]
		if str == str.upcase
			links.push split2[0]
		end	
	end
end
links = links.uniq.sort
puts links
puts "Found: #{links.length} unique constants."

i = 0.0
functions = []

last_time = Time.now
diff_times = []
links.each do |link_base|
	i+=1.0
	min = 0.0
	if i>1.0
		cur_time = Time.now
		diff_times.push cur_time-last_time
		diff_time = (diff_times.inject(:+).to_f / diff_times.size)*(links.length-i)
		last_time = cur_time
		min = (diff_time/60.0)
		if i>5.0
			diff_times.shift
		end
	end
	puts "#{(i/links.length.to_f*100.0).to_i}% - ETA: #{min.floor}m:#{(min-min.floor)*60.0}s - Downloading & Parsing: #{link_base}"
	url = "http://wiki.secondlife.com/w/index.php?title="+link_base.split("/")[2]+"&action=edit"
	puts "URL: #{url}"
	data = HTTParty.get(url)
	#puts data
	split = data.delete("\n").split("|")
	#puts split.length
	type = ""
	func = ""
	val = "!!!unknown!!!"
	r = 0
	split.each do |bit|
		split2 = bit.split("=")
		#puts "Bit: #{bit}"
		#puts "Split2: #{split2}"
		if split2!=nil
			if split2.length==2
				name = split2[0]
				dat = split2[1]
				if name=="name"
					func = dat
				elsif name == "type"
					type = dat
				elsif type == "vector"
					if name=="value"
						dits=dat.delete("{{")
						if dits=="LSL VR"
							x = split[r+1].to_f
							y = split[r+2].to_f
							z = split[r+3].delete("}}").to_f
							val = Vector[x,y,z]
						end
					end	
				elsif type == "rotation"
					if name=="value"
						dits=dat.delete("{{")
						if dits=="LSL VR"
							x = split[r+1].to_f
							y = split[r+2].to_f
							w = split[r+3].to_f
							z = split[r+4].delete("}}").to_f
							val = Vector[x,y,w,z]
						end
					end
				elsif type == "integer"
					if name == "hvalue"
						val = dat.hex
					elsif name == "value"
						dits = dat.delete("{{")
						if dits=="LSL Hex"
							val = split[r+1].delete("}}").hex
						else
							val = dat.to_i
							if val==0
								nval = dat.hex
								if nval!=val
									val = nval
								end
							end
						end
					end
				else
					val = "\"#{dat}\""
				end
			end
		end
		r+=1
	end
	func = "$#{func} = #{val.to_s}".strip
	puts "Result: "+func
end

ruby_file = File.join(File.dirname(__FILE__),"./constants.rb")
File.open(ruby_file, "w") do |file|
	file.print functions.join("\n")
end

exec("ruby --1.9 generate_code.rb")
