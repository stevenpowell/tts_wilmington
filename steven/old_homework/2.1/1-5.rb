# Write a program that asks for the time of day and then greets a user appropriately.

puts "Hey what time is it?"
time = ""
puts "Just need the hour pal!"
time = gets.chomp.to_i

puts "AM or PM?"

time2 = gets.chomp

puts "Thanks and..."
sleep 1

if time < 12 && time2 == "AM"
	puts "Good Morning"
elsif time < 5 && time2 == "PM"
	puts "Good afternoon"
elsif time > 5 && time < 12 && time2 == "PM"
	puts "Good evening"
elsif time == 12 && time2 == "AM"
	puts "What are you doing up?"
elsif time == 12 && time2 == "PM"
	puts "What's for Lunch?"
end