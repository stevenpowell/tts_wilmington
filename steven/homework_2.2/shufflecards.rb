#Create a program that will shuffle a deck of cards and assign a number of players two cards. 
#Make sure to ask the user for the number of players who are playing and that there are no duplicate cards in the deck!




puts "How many players?"

num_players = gets.chomp.to_i

def dealer(num_players card suit dealt)

	suit = [ D, S, C, H]
	deck = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,]
	dealt = []
	counter = 0
	hand_count = 0

	if 

	while counter < num_players

		while hand_count < 2

		num_suit = suit.length + 1
		num_deck = deck.length + 1
		shuffle1 = suit[rand(num_suit)]
		shuffle2 = deck[rand(num_deck)]
		card1 = ""
		card2 = ""

		if shuffle2 = 11
			shuffle2 = "jack"
		elsif shuffle2 = 12
			shuffle2 = "queen"
		elsif shuffle2 = 13
			shuffle2 = "king"
		elsif shuffle2 = 0
			shuffle2 = "ace"
		end

		hand1 = "#{shuffle2} of #{shuffle1}"
		dealt.each do |check|
			if hand1 == check
				hand_count = hand_count
			elsif card1 == ""
				card1 = hand1
			else
				dealt.push hand1
				card2 = hand1
				hand_count += 1
			end

		
	end





end

dealer num_players card.length suit.length