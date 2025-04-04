require 'rspec'
require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  it 'exists' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)  
    card3 = Card.new(:heart, 'Ace', 14)  
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    expect(deck).to be_a(Deck)
    expect(deck.cards).to eq([card1, card2, card3])
  end

  it '#rank_of_card_at' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)  
    card3 = Card.new(:heart, 'Ace', 14)  
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    expect(deck.rank_of_card_at(0)).to eq(12)
    expect(deck.rank_of_card_at(2)).to eq(14)
  end

  it '#high_ranking_cards' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)  
    card3 = Card.new(:heart, 'Ace', 14)  
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    expect(deck.high_ranking_cards).to eq([card1, card3])
  end

  it '#percent_high_ranking' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)  
    card3 = Card.new(:heart, 'Ace', 14)  
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    expect(deck.percent_high_ranking).to eq(66.67)
  end

  it '#remove_card' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)  
    card3 = Card.new(:heart, 'Ace', 14)  
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    expect(deck.cards).to eq([card1, card2, card3])
    deck.remove_card
    expect(deck.cards).to eq([card2, card3])
  end

  it '#add_card' do
    card2 = Card.new(:spade, '3', 3)  
    card3 = Card.new(:heart, 'Ace', 14) 
    cards = [card2, card3]

    deck = Deck.new(cards)

    card4 = Card.new(:club, '5', 5)
    deck.add_card(card4)
    
    expect(deck.cards).to eq([card2, card3, card4])
  end
end
