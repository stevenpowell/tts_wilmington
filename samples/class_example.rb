class Animal

	attr_accessor :weight

	def initialize(weight)
		@weight = weight
	end

	def print_weight

		puts @weight
	end

	def speak
		puts "A joyful noise!"
	end

end

class Dog < Animal

	attr_accessor :breed

	def initialize(weight, breed)
		super(weight)
		@breed = breed
	end

	def speak
		super
		puts "woof woof!"
	end

	def roll_over
		puts "...roll...roll"
	end

end

fluffy = Animal.new(14);
puts "Fluffy the Animal says:"
fluffy.speak()


fido = Dog.new(20, "Cockapoo")
puts "Fido the dog weighs"
fido.print_weight
puts "and Fido says"
fido.speak
puts "Roll over Fido!"
fido.roll_over

puts "Fido is a #{fido.breed}"

puts "Can Fluffy roll over?"
fluffy.roll_over

# s = "Hello"

# #Equivalent
# s = String.new("Hello")

# number = Integer.new(42)

# my_array = [1,2,3]

# my_array = Array.new([1,2,3])