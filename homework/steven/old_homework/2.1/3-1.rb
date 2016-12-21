# Write a program that keeps asking the user for a number until they type done. Puts the addition of the numbers.

" Hey, gimme some numbers and type \"done\" when you\'re finished."

number = 0
count = 0
all_numbers[]

while count != 1
	number = gets.chomp
	if number == "done"
		count += 1
	else
		number = number.to_i
	all_numbers.push number
end



