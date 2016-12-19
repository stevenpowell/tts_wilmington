teachers = ['Brian', 'Joseph', 'Minerva', 'Katherine']
students = ['Steven', 'Hannah', 'Casey', 'Bob']

puts "Please enter your name"
name = gets.chomp

is_teacher = false
is_student = false

teachers.each do |teacher|
	if teacher.downcase == name.downcase
		is_teacher = true
	end
end

if !is_teacher
	students.each do |student|
		if student.downcase == name.downcase
			is_student = true
		end
	end
end

if is_teacher
	puts "Hello Professor " + name + ". What crazy things are we going to learn?"
elsif is_student
	puts "Hello " + name + ". Did you do the homework?"
else
	puts "I have no idea who you are."
end