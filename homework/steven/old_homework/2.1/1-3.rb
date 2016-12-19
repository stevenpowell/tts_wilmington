# Ask a user for their favorite color. If they answer with blue or green, puts "Great Choice!". 
# If it's anything else, the program should mention the color by name and say "Really, that's your favorite color?"

puts "Hey, what's your favorite color."

color_choice = gets.chomp

	if color_choice == "green" || color_choice == "blue"

		puts "Great Choice!"
else
		puts "Really? #{color_choice} is your favorite color?"
	end