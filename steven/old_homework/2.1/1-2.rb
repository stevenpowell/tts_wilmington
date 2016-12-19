# Until Dad says yes, keep asking him if we can go to Itchy and Scratchy Land. (write with both until and while)

puts "I wanta OompaLoompa now!  I want it now! (yes/no)"
puts" Howbout it Pops? (yes/no)"

yesCount = 0

while yesCount < 1

	response = gets.chomp
	if response == "yes"
		yesCount += 1
	else
	puts "But I want it now!"
end
end