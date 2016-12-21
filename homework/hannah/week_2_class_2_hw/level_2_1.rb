def translate_card(card)
	if card == 1 || card == 14 || card == 27 || card == 40
		type = 'Ace'
	elsif card == 2 || card == 15 || card == 28 || card == 41
		type = '2'
	elsif card == 3 || card == 16 || card == 29 || card == 42
		type = '3'
	elsif card == 4 || card == 17 || card == 30 || card == 43
		type = '4'
	elsif card == 5 || card == 18 || card == 31 || card == 44
		type = '5'
	elsif card == 6 || card == 19 || card == 32 || card == 45
		type = '6'
	elsif card == 7 || card == 20 || card == 33 || card == 46
		type = '7'
	elsif card == 8 || card == 21 || card == 34 || card == 47
		type = '8'
	elsif card == 9 || card == 22 || card == 35 || card == 48
		type = '9'
	elsif card == 10 || card == 23 || card == 36 || card == 49
		type = '10'
	elsif card == 11 || card == 24 || card == 37 || card == 50
		type = 'Jack'
	elsif card == 12 || card == 25 || card == 38 || card == 51
		type = 'Queen'
	elsif card == 13 || card == 26 || card == 39 || card == 52
		type = 'King'
	end
		
	if card.between?(1,13)
		suite = ' of Clubs'
	elsif card.between?(14,26)
		suite = ' of Diamonds'
	elsif card.between?(27,39)
		suite = ' of Spades'
	elsif card.between?(40,52)
		suite = ' of Hearts'
	end
		
	return type + suite
end

def get_cards(num, cards)
	cards = cards.shuffle
	card1 = cards.pop()

	cards = cards.shuffle
	card2 = cards.pop()

	card1 = translate_card(card1.to_i)
	card2 = translate_card(card2.to_i)

	puts "Player #{num} drew #{card1} and #{card2}"
	return cards
end

deck_cards = (1..52).to_a

puts "How many players in this game?"
num_players = gets.to_i

count = 1
while count <= num_players
	deck_cards = get_cards(count, deck_cards)
	count += 1
end