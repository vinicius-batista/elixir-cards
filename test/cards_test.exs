defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck())
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck)
  end

  test "creating a hand" do
    {hand, deck} = Cards.create_hand(5)
    assert length(hand) == 5
    assert length(deck) == 15
  end

  test "full deck should contains Ace of Spades" do
    deck = Cards.create_deck()
    assert Cards.contains?(deck, "Ace of Spades")
  end
end
