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
          deck.hold_card(card)
          deck.cards.should == [card]
     end
    
    it "can add multiple cards" do
        deck = Deck.new
        card1 = Card.new
        card2 = Card.new
        deck.hold_card(card1)
        deck.hold_card(card2)
        deck.cards.should == [card1, card2]
    end    

    it "has a conveinent way to add multiple cards" do
        deck = Deck.new
        card1 = Card.new
        card2 = Card.new
        deck.hold_cards(card1, card2)
        deck.cards.should == [card1, card2]
    end 

    it "shows player the front of a random card" do
      deck = Deck.new
      #x = deck
      card = Card.new
      card.front = 'puppy'
      #y = card 
      deck.hold_card(card)
      #f = hold_card 
      #f(x,y)= 
      card = Card.new
      card.front = 'kitty'
      deck.hold_card(card)
      card = Card.new
      card.front = 'snake'
      deck.hold_card(card)
      random_card = deck.random_card
      ['puppy', 'kitty', 'snake'].should include random_card.front
    end   
end   

