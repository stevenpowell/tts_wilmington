# Adding from random arrays - write a program that takes two arrays of random numbers, 
# the length of which is decided by the user, and adds the corresponding items in each array (i.e., the first number in 
# the first array will be added to the first item in the second array). Remember to create methods to keep your code DRY!

def array_generator()
	temp_array1 = []
	input = ""
	while input != "done"
		input = gets.chomp
		if input == "done"
			break
		else
		temp_array1.push input.to_i
	end
end
	return temp_array1
end

def array_adder(input1, input2)
	counter1 = 0
	temp_array2 = []
	if input1.length < input2.length
		longer_array = input1.length
	else
		longer_array = input2.length
	end
	while counter1 < longer_array
		temp_num = input1[counter1] + input2[counter1]
		temp_array2.push temp_num
		counter1 += 1
	end
	if temp_array2.length < input1.length
		temp_num2 = temp_array2.length + 1
		while temp_num2 < input1.count
			temp_array2.push input1[temp_num2]
			temp_num2 += 1
		end
	else
		temp_num3 = temp_array2.length + 1
		while temp_num3 < input2.length
			temp_array2.push input2[temp_num3]
			temp_num3 += 1
		end
	end
	return temp_array2
end

puts "Enter numbers, create array.  Enter done to finish"
array1 = array_generator
puts array1
puts ""
puts "Enter numbers, create second array.  Enter done to finish"
array2 = array_generator
puts array2 
puts ""

array3 = array_adder(array1, array2)
puts array3
