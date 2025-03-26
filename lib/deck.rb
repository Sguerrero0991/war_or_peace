require 'pry'
class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(card_index) #method will take one argument that reps the index position of a card to be used 
    @cards[card_index].rank #This was confusing but I put in a pry and saw what I had access to
  end           #I found @cards[0].rank returned what I wanted but the () from the argument thru me off 
                #I just needed to replace the 0 with [card_index] to match the argument variable we'll be pasing through  
  def high_ranking_cards
    @cards.find_all do |card| #had to find the right enumerable for this. find_all returns an array of all elements
      card.rank >= 11       #that match a condition 
    end
  end






end   