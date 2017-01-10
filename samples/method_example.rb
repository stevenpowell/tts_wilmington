
#Defined outside of the method scope
argument1 = 100

def my_method(argument1, argument2)

	value = argument1 + argument2
	#my code
	#puts this
	#gets that
	return value

end

# Puts the argument defined in the outer scope
puts argument1
# This isn't defined in this scope so it breaks
#puts argument2

#call the method
puts(my_method(1.0, 2.2))
