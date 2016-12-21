#When dividing numbers in Ruby, what if we want to include the remainder as well?
#Write a method that takes two integers as arguments, divides the first integer by the second integer 
#and returns the result-including the remainder. If 
#either of the numbers is not an integer, then don’t accept the number and ask again. Do not accept zero (0) as a number.

def divide number1 number2
	if number1.is_a?Integer || number2.is_a?Integer == false 
		puts "We need Integers"
	
	elsif number1 || number2 = 0
		puts "No zeroes excepted"
	else
		puts (number1.to_i / number2.to_i) + " With a remainder of " + (number1.to_i % number2.to_i)
	return result
end

puts "Let's do division!"
puts "Enter a number!"

number1 = gets.chomp

puts "Another number!"

number2 = gets.chomp

puts "Calculating"

puts divide(number1 number2)
