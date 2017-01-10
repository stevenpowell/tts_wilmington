multiply_by_two = Proc.new do |x|
	x * 2 if x > 0
end


my_array = [1,2,-3,4]

my_array.map! &multiply_by_two

puts my_array

