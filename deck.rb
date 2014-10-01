class Deck
  attr_accessor :cards
end

class Card
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end


a = Card.new(:hearts, 2)
b = Card.new(:hearts, 3)


deck = Deck.new
deck.cards = [a,b]

p deck.cards
