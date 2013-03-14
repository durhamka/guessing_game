require 'rspec'
require './cards'
RSpec.configure do |config|
  config.expect_with :rspec do |c|
    # Disable the `expect` sytax...
    c.syntax = :should
end
end    

describe(Card) do
     it "should allow me to set the value of the front" do
          card = Card.new
          card.front=('dog')
          card.front.should == 'dog'
     end  

     it "should allow me to set the value of the back" do
          card = Card.new
          card.back=('inu')
          card.back.should == 'inu'
     end    
end

describe(Deck) do
     it "should hold the cards" do
          deck = Deck.new
          card = Card.new
          deck.cards.should == [card]
     end
     it "can add cards to it" do
          deck = Deck.new
          card = Card.new
          deck.add_card(card, deck)
     end          
end   

