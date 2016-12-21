#Build a student testing app. 
#The app should have a class of Student and the student should "login" with their email and password before they 
#can take a test. The user should be able to take the test and receive feedback on answers. Their score should 
#be saved and printed at the end of the test. If they score under 60 they should be prompted to take the test again. 


########################################################
class Student

	attr_accessor :name
	attr_accessor :password

def initialize(name, password)

		@name = name
		@password = password
end

 Auth = {
			"user" => "tester",
			"pass_word" => "WOWSuchS#cur1ty!"
		}

def check(username, pass)

	if username == Auth["user"] && pass == Auth["pass_word"]
		return true
	else
		return false
	end
end

def check_name(input)
	if input == Auth["user"]
		return true
	else
		return false
	end
end

end


########################################################

class Test < Student

	attr_accessor :answer
	attr_accessor :question
	attr_accessor :final

	def initialize()

		@answer = ""
		@question = 1
		@@final = 0
	end

	def change_answer(answer)

		@answer = answer
	end

	def change_question(question)
		@question = question
	end

	correct_answer = Hash.new

		correct_answer[1] = "white"
		correct_answer[3] = "yes"
	end

	def scorekeeper(input)
		@@final = @@final + input
		return final_score
	end

	def quiz()

		if @question == 1
			puts "What color was George Washington's white horse?"
			get_answer(gets.chomp)
			if @answer == correct_answer[1]
				puts "Correct, your score is "
				scorekeeper(34)
				@question += 1
			else
				puts "Incorrect"
				scorekeeper(0)
				@question += 1
			end
		elsif @question == 2
				puts "What is your name?"
				get_answer(gets.chomp)
				if check_name(@answer) == true
					puts "Correct"
					corekeeper(33)
					@question += 1
				else
					puts "Incorrect"
					@question += 1
				end
		elsif @question == 3
				puts "Fill in the Blank! Name this Beatles Song: XXXterday"
				get_answer(gets.chomp)
				if @answer == correct_answer[3]
					puts "Correct"
					scorekeeper(33)
					@question += 1
				else
					puts "Incorrect"
				end
	
		else
			if @@final >= 60
				puts "You are Winrar! You scored #{@@final}"
			else
				puts "You LOSE, good day sir.  Your score is #{@@final}"
				puts "Retake the test!"
			end
		end
end








########################################################

# Instantiates object of the student class and authenticates user permissions
puts "Time to take your test"
puts "Enter your name"

user_name = gets.chomp

puts "You\'ve been studying..."
puts "...haven\'t you?"
sleep 1
puts "Enter your Password"

pass = gets.chomp

tester = Student.new(user_name, pass)

while tester.check(user_name, pass) == false
	puts "Enter your name."
	user_name = gets.chomp.downcase
	puts "Enter your password."
	pass = gets.chomp.downcase
end

# Initiates Test

test_session = Test.new

test_session.quiz()
