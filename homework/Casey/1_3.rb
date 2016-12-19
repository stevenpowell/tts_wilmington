puts "Give me a number."
length = gets.to_i

array_1 = []
array_2 = []
sum = []

length.times do 

	rand_1 = rand(1...100)
	rand_2 = rand(1...100)
	array_1.push rand_1
	array_2.push rand_2
	sum.push(rand_1 + rand_2)
end

puts array_1
puts "---"
puts array_2
puts "---"
puts sum