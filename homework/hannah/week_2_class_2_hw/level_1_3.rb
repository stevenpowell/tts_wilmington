def get_number
	return rand(1000) ##limiting to max of 1000 to prevent giant numbers
end

def fill_array(num)
	count = 0
	array = []
	until count == num
		array.push(get_number)
		count += 1
	end
	return array
end

puts "How many number pairs would you like to add?"
num_length = gets.chomp.to_i

puts "Enter numbers for the first parameters at a time:"
array1 = fill_array(num_length)
puts "Enter numbers for the second parameters at a time:"
array2 = fill_array(num_length)

count = 0
while count < num_length
	puts array1[count].to_s + " + " + array2[count].to_s + " = " + (array1[count] + array2[count]).to_s
	count += 1
end
