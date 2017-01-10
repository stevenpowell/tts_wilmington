def passive_method(&block)
	puts "At the start of the method"
	block.call(5) if block_given?
	puts "At the end of the method"
	yield 8 if block_given?
end


passive_method {|s| puts "I'm in a #{s} block!"}
