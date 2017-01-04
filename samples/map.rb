def square_stuff(items)

	return items.map { |item| item * item}
end

numbers = [1,2,3,4]

squared_numbers = square_stuff(numbers)
puts squared_numbers
puts numbers

puts "==================="

tts_class = [ {id: 1, name: 'Casey'}, {id: 2, name: 'Steven'}, {id: 3, name: 'Hannah'}, {id: 4, name: 'Sir Robin'}]

names = tts_class.map {|student| student[:name] }

puts names.sort!

puts "==================="

cool_names = [:joe, :alice, :bob, :sue]

# cool_names.map!{ |x| x.to_s}
# cool_names.map!{ |x| x.capitalize}
# cool_names.sort!

# This is equivalent to the above
cool_names.map!(&:to_s).map!(&:capitalize).sort!

puts cool_names