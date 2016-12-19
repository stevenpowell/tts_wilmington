# "Students & Teachers" - write a program that has two arrays, one of student names and one of teacher names. 
# Ask the user for their name, and greet 
# them according to their role (if they're a teacher, it says one thing, if they're a student, it says something else)

#class = [[paul, ringo, john, george], [raphael, michaelangelo, donatelo, leonardo]]

students = ["paul", "ringo", "john", "george"]
teachers = ["raphael", "michaelangelo", "donatelo", "leonardo"]

def interrogator(input)
	students.each do |test|
		if input == test
		classifcation = student
	end
	teachers.each do |test|
		if input == test
		classification = teacher
	end
return classification
end

puts "Hey, what's your name pal?"
input = gets.chomp.downcase

if classification == student
	puts "Hello padawan #{input.capitalize}."
elsif classification == teacher
	puts "Greetings professor #{input.capitalize}."
else 
	puts "You ain\'t on the list pal"
end