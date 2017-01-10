def add_numbers(num1, num2)
	return num1 + num2
end

def subtract_numbers(num1, num2)
	return num1 - num2
end

def multiply_numbers(num1, num2)
	return num1 * num2
end

def divide_numbers(num1, num2)
	if num2 == 0.to_f
		puts "Can't divide by 0.  Terminating program."
		result = 'fail'
	else
		result = num1 / num2
	end
	return result
end

puts "Please enter number 1:"
num1 = gets.to_f #defaults to 0.00 if no entry

puts "Please enter number 2:"
num2 = gets.to_f #defaults to 0.00 if no entry

puts "What would you like to do with these numbers (add/subtract/multiply/divide):"
input = gets.chomp
while input.downcase != 'add' && input.downcase != 'subtract' && input.downcase != 'multiply' && input.downcase != 'divide'
	puts "Invalid entry: " + input
	puts "Please try again:"
	input = gets.chomp
end

if input.downcase == 'add'
	result = add_numbers(num1, num2)
	operator = ' + '
elsif input.downcase == 'subtract'
	result = subtract_numbers(num1, num2)
	operator = ' - '
elsif input.downcase == 'multiply'
	result = multiply_numbers(num1, num2)
	operator = ' * '
elsif input.downcase == 'divide'
	result = divide_numbers(num1, num2)
	operator = ' / '
end

if result != 'fail'
	puts num1.to_s + operator + num2.to_s + ' = ' + result.to_s
end
	
	