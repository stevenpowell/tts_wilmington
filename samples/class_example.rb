class Animal

	def print_weight

		puts "20 lbs"
	end

	def speak
		puts "A joyful noise!"
	end

end

class Dog < Animal


	def speak
		puts "woof woof!"
	end

	def roll_over
		puts "...roll...roll"
	end

end


fluffy = Animal.new();

fluffy.speak()

fido = Dog.new()
fido.print_weight
fido.speak
fido.roll_over

fluffy.roll_over

# s = "Hello"

# #Equivalent
# s = String.new("Hello")

# number = Integer.new(42)

# my_array = [1,2,3]

# my_array = Array.new([1,2,3])