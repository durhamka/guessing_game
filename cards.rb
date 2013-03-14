class Card
attr_accessor :front,:back
end

class Deck
     def hold_card
          @card = [card]
     end

    def add_card(card, deck)
		@card << card
	end	 

end



