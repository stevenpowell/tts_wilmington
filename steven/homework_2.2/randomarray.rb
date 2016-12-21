# Adding from random arrays - write a program that takes two arrays of random numbers, 
# the length of which is decided by the user, and adds the corresponding items in each array (i.e., the first number in 
# the first array will be added to the first item in the second array). Remember to create methods to keep your code DRY!

def array_generator(input)
	temp_num = input + 1
	temp_array = []
	counter = input
	while temp_array.count < counter
		rand_num = rand(temp_num)
		temp_array.push rand_num
	end
return temp_array
end

def num_grabber()
	input = gets.chomp.to_i
return input
end 

def array_adder()
	counter1 = 0
	temp_array = []
	if array1.length < array2.length
		longer_array = array1.length
	else
		longer_array = array2.length
	end
	while counter1 < longer_array
		temp_num = array1[counter1] + array2[counter1]
		temp_array.push temp_num
		counter1 += 1
	end
	if temp_array.length < array1.length
		temp_num2 = temp_array.length + 1
		while temp_num2 < array1.count
			temp_array.push array1[temp_num2]
			temp_num2 += 1
		end
	else
		temp_num3 = temp_array.length + 1
		while temp_num3 < array2.length
			temp_array.push array2[temp_num3]
			temp_num3 += 1
		end
	end
	return temp_array
end

puts "Enter first number."
array1 = array_generator(num_grabber)
puts array1
puts "Enter second number."
array2 = array_generator(num_grabber)
puts array2
sleep 1
puts "Sum: "
puts ""
puts array_adder
