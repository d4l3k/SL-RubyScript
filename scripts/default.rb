$server_info = "#{`uname -s`} #{`uname -r`} #{`uname -v`}"
class SLObject
	def post_init
		puts "post init"
		llSetObjectName("|RubyScript| Test Object i#{$objects.index(self)}")
		llOwnerSay "RubyScript Initialized! Running on: #{$server_info}.".delete("\n")
		llOwnerSay("RUBY_VERSION: #{RUBY_VERSION}, RUBY_PLATFORM: #{RUBY_PLATFORM}, RUBY_RELEASE_DATE: #{RUBY_RELEASE_DATE}")

		test_list = ["test",5,1.3]
		llOwnerSay("TEST|List Length| Ruby: #{test_list.size}. LSL: #{llGetListLength(test_list)}")
		llOwnerSay("Welcome to RubyScript #{llKey2Name(llGetOwner)}. This example file (default.rb) was created by Tomithe Aeon.")
		llOwnerSay("Total objects| #{$objects.size.to_s}")
		obj = $objects[0]
		obj.llOwnerSay("This is a message output from object 0!")
	end
	def touch_start data
		puts "touch_start"
		llSay 0, "Hello: #{data[:name][0]}(detectedname) or #{llKey2Name(data[:key][0])}(key2name)."
	end
	def collision_start data
		llSay 0, "#{data[:name][0]} ran into me!"
	end
end
