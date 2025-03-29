require 'pry'
class Turn
  attr_reader :player1, :player2, :spoils_of_war
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def type
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0) #when the rank_of_card_at(0) from the players’ decks are NOT the same rank.
      :basic #I had to remember that you can't call rank_of method unless you call .deck on player, that's how you get acess to it
    elsif @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0) #when both players’ rank_of_card_at(0) are the same.
      :war 
    else @player1.deck.rank_of_card_at(0) && @player1.deck.rank_of_card_at(2) == @player2.deck.rank_of_card_at(0) && @player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction  #when both players’ rank_of_card_at(0) AND rank_of_card_at(2) are the same.
    end
  end

  def winner
    if type == :basic #whichever player has a higher rank_of_card_at(0)
      if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)  
        return @player1
      else 
        return @player2
      end 
    elsif type == :war #whichever player has a higher rank_of_card_at(2)
      if @player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2)
        return @player1
      else 
        return @player2
      end   
    else type == :mutually_assured_destruction
      return "No Winner"
    end
    #learned I can put an if/else statement within another if/elsif/else statement 
  end

  
end
