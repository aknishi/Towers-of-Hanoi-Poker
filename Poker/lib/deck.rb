require 'card'

class Deck
  #should create 52 unique cards
  
  def self.create_deck
    suits = Card.suits
    values = Card.values
    deck = suits.product(values).map do {|option| Card.new(option[0], option[1]) }
    deck.shuffle
  end
  
  def initialize(deck = Deck.create_deck)
    @deck = deck
  end
    
  
end