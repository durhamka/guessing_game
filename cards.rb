class Card
attr_accessor :front,:back
end

class Deck
attr_accessor :front, :back	
	def initialize
     	@cards = []
     end 

     def cards 
     	@cards
     end	
     
     def hold_card(card)
        @cards << card
     end 

     def hold_cards(card1, card2)
     	@cards << card1
     	@cards << card2
     end

     def random_card(front)
          @front = front
     end	
end
