class Student
	attr_accessor :last_name, :first_name, :email, :password, :score

	def initialize(last_name, first_name, email, password, score)
		@last_name = last_name
		@first_name = first_name
		@email = email
		@password = password
		@score = score
	end

	def score=(new_score)
		@score = new_score
	end

	def login(email, password)
		if email == @email && password == @password
			return true
		else
			return false
		end
	end
end

def take_test(student)
	score = 0
	puts "What is your Name?"
	name = gets.chomp
	if name == student.first_name + ' ' + student.last_name
		score += 25
	end
	puts "What is your Quest?"
	quest = gets.chomp
	if quest == "To Find the Holy Grail"
		score += 25
	end
	puts "What is your favorite color?"
	color = gets.chomp
	if color == "Blue...No Pink"
		score += 25
	end
	puts "Where do all these coconuts come from?"
	coconut = gets.chomp
	if coconut == "Swallows"
		score += 25
	end

	if score == 0
		puts "Obviously, you have not watched Monthy Pythons and the Quest for the Holy Grail....for shame"
	elsif score == 25
		puts "Only 1 of 4 answers?  What is the world coming to?"
	elsif score == 50
		puts "Did you stop halfway through the movie?"
	elsif score == 75
		puts "So close.  Only missed one."
	else
		puts "Yay!  A Monty Python and the Holy Grail fan"
	end
	
	return score
end

student1 = Student.new("Strange", "Stephen", "sstrange@gmail.com", "sorcerersupreme", 0)

puts "Enter your email to login:"
email_input = gets.chomp
puts "Enter your password:"
password_input = gets.chomp

if student1.login(email_input, password_input)
	count = 0
	while (student1.score < 60)
		if count != 0
			puts "Your score was less than 60 at: " + student1.score.to_s + ".  Please take test again."
		end
		count += 1
		score = take_test(student1)
		student1.score = score
	end

	puts "Your score:"
	puts student1.score
else
	puts "Authentication Failure."
end