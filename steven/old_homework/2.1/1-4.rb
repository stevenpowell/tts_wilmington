# Write a program that repeats everything a user inputs. It should only stop when a user types "I'm a dummy"

response = ""

while response != "I\'m a dummy"
	response = gets.chomp
	if response != "I'm a dummy"
	puts "#{response}"
else
sleep 1
puts "..."
sleep 1
puts "You said it man."	
sleep 1
end
end