# Write a program that asks a user for their age. If they are under 21 
# the bouncer should tell them how many years they have left.

puts "How old are you, Drunky?"

age = gets.chomp.to_i
years_left = 21 - age

if age >= 21
	puts "Cheers!"
else
	puts "You got #{years_left} years to go, pal"
end
