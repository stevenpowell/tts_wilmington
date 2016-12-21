# Create a program that will roll a dice twice and output the numbers.

die = [1,2,3,4,5,6]

roll1 = rand(die.count) + 1
roll2 = rand(die.count) + 1

sum = roll2 + roll1

puts "Place your bets!"
sleep 1
puts "\*shake\* \*shake\*"
sleep 1
puts "#{roll2} and a #{roll1}"
puts "all together now"
puts sum
