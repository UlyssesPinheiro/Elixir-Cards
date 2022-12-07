defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_lenght = length(Cards.create_deck)
    assert deck_lenght == 52
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    # There is a small chance that the returned deck is the same as the original one
    refute deck == Cards.shuffle(deck)
  end
end
