students = ["paul", "ringo", "john", "george"]
teachers = ["raphael", "michaelangelo", "donatelo", "leonardo"]

input = "paul"


def interrogator(input)
	students.each do |test|
		if input == test
		classifcation = "student"
	end
	teachers.each do |test|
		if input == test
		classification = "teacher"
	end
end

puts classification