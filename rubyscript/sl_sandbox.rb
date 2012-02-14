require 'sandbox'
# Extends the current sandbox methods to allow for 1.9 features & the puts command.
module Sandbox
	class Safe
		def activate2!
			activate_fakefs
	  
			keep_singleton_methods(:Kernel, KERNEL_S_METHODS)
			keep_singleton_methods(:Symbol, SYMBOL_S_METHODS)
			keep_singleton_methods(:String, STRING_S_METHODS)
			keep_singleton_methods(:IO, IO_S_METHODS2)

			keep_methods(:Kernel, KERNEL_METHODS2)
			keep_methods(:NilClass, NILCLASS_METHODS)
			keep_methods(:Symbol, SYMBOL_METHODS)
			keep_methods(:TrueClass, TRUECLASS_METHODS)
			keep_methods(:FalseClass, FALSECLASS_METHODS)
			keep_methods(:Enumerable, ENUMERABLE_METHODS2)
			keep_methods(:String, STRING_METHODS2)
		end
		IO_S_METHODS2 = %w[
			new
			foreach
			open
			select
		].freeze
		ENUMERABLE_METHODS2 = ENUMERABLE_METHODS + %w[
			first
		].freeze
		KERNEL_METHODS2 = KERNEL_METHODS + %w[
			puts
		].freeze
		STRING_METHODS2 = STRING_METHODS + %w[
			force_encoding
			bytes
			ord
			unpack
			old_format
		].freeze
	end
end
