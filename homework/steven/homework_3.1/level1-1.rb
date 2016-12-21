
class Person

def initialize(first_name, last_name, occupation)
@@first_name = first_name
@@last_name = last_name
@@occupation = occupation
end

def get_first_name()
	puts @@first_name
end

def first_name(new_name)
	@@first_name = new_name
end
	def get_last_name
		puts @@last_name
	end

def set_last_name(new_name)
	@@last_name = new_name
end

def get_occupation()
	puts @@occupation
end

def set_occupation(new)
	@@occupation = new
end

end

good_guy = Person.new("jim", "gordan", "detective")
puts good_guy
puts good_guy.get_first_name
good_guy.first_name("jimmy")
puts good_guy.get_first_name
puts ""
puts good_guy.get_first_name
puts good_guy.get_last_name
puts good_guy.get_occupation