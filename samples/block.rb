some_numbers = [1,2,3,4]

some_numbers.each { |swallow|

	# put any code I want to operate on the "swallow"
	# iteration variable
	puts swallow * swallow
}

other_numbers = [5,6,7,8]

# object      method  argument (the block)
other_numbers.each    {|x| puts x*x}