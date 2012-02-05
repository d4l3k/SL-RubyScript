$obsfucate = true

# CODE
class String
	def strip2
		if $obsfucate
			return strip
		end
		return self
	end
end

functions = ""
ruby_file = File.join(File.dirname(__FILE__),"./all_functions.txt")
File.open(ruby_file, "r").each do |file|
	functions += file
end

functions = functions.split("\n")
functions.delete("")
puts functions
lsl = []
ruby = "class SLObject\n"
ruby_module = ""
first = true
i = 0
functions.each do |func|
	i+=1
	group_index = (i/100.0).floor.to_i
	puts "#{(i/functions.length.to_f*100.0).to_i}% - Proccessing: #{func}"
	parts = func.split("(")
	part1=parts[0].split(" ")
	type = ""
	name = part1[0]
	if part1.length==2
		type = part1[0]
		name = part1[1]
	end
	
	mini_lsl=""
	if first
		lsl[0]=""
		first = false
		mini_lsl+="string callfunc0(string f, list a)\n{\n"
	elsif (i%100.0)==0.0
		lsl[group_index]=""
		lsl[group_index-1]+="return \"\";\n}"
		mini_lsl+="string callfunc#{group_index}(string f, list a)\n{\n"
	else
		mini_lsl+="else "
	end
	mini_lsl+="if(f==\"#{name}\")\n{\n\t"
	temp_func = "#{name}("
	arg_temps = []
	arg_temps2 = []
	index = 1
	parts[1].split(")")[0].split(",").each do |bit|
		bit = bit.strip
		if(bit!="")
			puts bit
			bits = bit.split(" ")
			fun = bits[1]
			fun_type = bits[0]
			puts bits.to_s
			if fun_type == "string" || fun_type == "key"
				arg_temps.push "llList2String(a,#{index})"
			elsif fun_type == "list"
				arg_temps.push "unserializeList(llList2String(a,#{index}))"
			else
				arg_temps.push "(#{fun_type})llList2String(a,#{index})"
			end
			arg_temps2.push "ll_"+fun
			index+=1
		end
	end
	temp_ruby = "\tdef #{name} #{arg_temps2.join(", ")}\n\t\treturn send_packet \"#{name}\", [#{arg_temps2.join(", ")}]\n\tend\n"
	ruby_module += "def #{name} #{arg_temps2.join(", ")}\n\treturn $objects[0].#{name} #{arg_temps2.join(", ")}\nend\n"
	temp_func+=arg_temps.join(",")+")"
	if type == ""
		temp_func = temp_func+";\n\treturn \"n\";\n}\n"#"llHTTPResponse(id,200,"nil");"
	elsif type == "list"
		temp_func = "return serializeList(#{temp_func});\n}\n"
	elsif type == "string" || type=="key"
		temp_func = "return #{temp_func};\n}\n"
	else
		temp_func = "return (string)#{temp_func};\n}\n"
	end
	lsl[group_index]+=mini_lsl+temp_func
	ruby+=temp_ruby
end
lsl[lsl.size-1]+="return \"\";\n}\n"
puts "Writing Ruby Code"
File.open(File.join(File.dirname(__FILE__),"./functions.rb"), "w") do |file|
	file.print ruby+"end\n"+ruby_module
end
puts "Finished generating functions. Parsing LSL Templates & Obsficating it."

def lsl_template file, range, lsl
	puts "Generating: #{file}, range: #{range}."
	script = ""
	start = false
	File.open(File.join(File.dirname(__FILE__),file+".template"), "r").each do |data|
		if data.include? "//!$!-CODE_START"
			start = true
			script += data
		elsif data.include? "//!$!-FUNCTION_CODE"
			split = lsl[range].join("\n").split("\n")
			split.each do |data|
				data = data.strip2
			end
			jn = ""
			if !$obsfucate
				jn = "\n"
			end
			script+=split.join(jn)
		elsif data.include? "//!$!-CALL_CODE"
			first = true
			range.each do |n|
				if lsl[n]
					if first
						script+="string resp=callfunc#{n}(func, args);\n".strip2;
						first=false
					else
						script+="if(resp==\"\")\n\t{\nresp=callfunc#{n}(func, args);\n}\n".strip2
					end
				end
			end
		elsif !start
			script += data
		else
			index = data.index("//")
			index2 = data.index("http://")
			if index
				if index2
					if index!=(index2+5)
						script += data[0..(index-1)].strip2
					end
					script += data
				else
					script += data[0..(index-1)].strip2
				end
			else
				script += data.strip2
			end
		end
	end
	if $obsfucate
		script = script.delete("\t")
	end
	File.open(File.join(File.dirname(__FILE__),file), "w") do |file|
		file.print script
	end
end

lsl_template "./script.lsl", 0..1, lsl
lsl_template "./script_slave.lsl", 2..5, lsl
