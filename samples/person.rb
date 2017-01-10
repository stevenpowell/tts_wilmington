class Person


	# A good example of attributes can be found at
	# http://ruby.about.com/od/oo/ss/Using-Attributes.htm
	attr_accessor :first_name, :last_name, :gender, :age
	attr_reader :fav_color

	def initialize(first_name, last_name, gender, age, fav_color)

		@first_name = first_name
		@last_name = last_name
		@gender = gender
		@age = age
		@fav_color = fav_color
	end

	def introduction

		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender} "
		puts "and has a favorite color of #{@fav_color}"

	end

	def last_name=(last_name)

		puts "I'm in the writing method!"
		@last_name = last_name
		@age += 1
	end

end


hero = Person.new("Peter", "Parker", "male", 18, "red")
hero.introduction

hannahs_hero = Person.new("Clark", "Kent", "male", 34, "blue")
hannahs_hero.introduction()

hannahs_hero.last_name = "Smith"
hannahs_hero.introduction()

hannahs_hero.age = 54
hannahs_hero.introduction()

hannahs_hero.fav_color = "purple"