require 'card'

class Deck
  #should create 52 unique cards
  
  def create_deck
    52.times do 
      deck = []
      card = Card.new
      while deck.include?(card) 
        card = Card.new
      end
      deck << card
    end
  end
  

  
end