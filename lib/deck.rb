require 'pry'
class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(card_index) #method will take one argument that reps the index position of a card to be used 
    @cards[card_index].rank #This was confusing but I put in a pry and saw what I had access to
  end           #I found @cards[0].rank worked but the () from thr argument were throwing me off 
end