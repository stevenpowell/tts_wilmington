class Word < String

	def very_long?(the_word)

		if the_word.length >= 10
			return true
		else
			false
		end

	end

end

w = Word.new

puts w.very_long?("supercalifragilisticexpialidocious")

puts w.very_long?("nope")

puts w.length

puts w.class


