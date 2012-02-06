llOwnerSay "RubyScript Initialized!"
llOwnerSay("RUBY_VERSION: #{RUBY_VERSION}, RUBY_PLATFORM: #{RUBY_PLATFORM}, RUBY_RELEASE_DATE: #{RUBY_RELEASE_DATE}")

test_list = ["test",5,1.3]
llOwnerSay("TEST|List Length| Ruby: #{test_list.size}. LSL: #{llGetListLength(test_list)}")

class SLObject
	def touch_start data
		llSay 0, "Hello: #{llKey2Name(data[:key][0])}"
	end
end

