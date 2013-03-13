#card = Card.new
class Application
	def initialize 
		@decks = []
	end
end

}
	attr_accessor(:front, :back)
	
	def initialize(front, back) 
		@front = front
		@back = back 
	end		
end

class Deck
	attr_reader :cards
	def initialize name 
		@name = name
		@cards = []
	end

	def add_card(card, deck)
		@cards << card
	end

	def shuffle
		@cards.shuffle!
	end

	def correct? guess
		guess == @back
	end			
end

card1 = Card.new("cat", "neko")
card2 = Card.new("dog", "inu") 

deck = Deck.new("Japanese")
deck.add_card("kinsey")

deck.cards.each do |card|
	front = card.front
	back = card.back	

	print "#{front} > "
	guess = gets.chomp

	if card.correct?(guess)
		puts "Correct"
	else
		puts "Incorrect. The answer was #{back}."
	end
end	
			