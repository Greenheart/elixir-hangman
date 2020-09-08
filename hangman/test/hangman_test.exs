defmodule HangmanTest do
  use ExUnit.Case

  test "a valid guess returns a correct tally" do
    game = Hangman.Game.new_game("wibble")
    {game, tally} = Hangman.make_move(game, "x")
    assert MapSet.member?(tally.used, "x")
    {_game, tally} = Hangman.make_move(game, "y")
    assert MapSet.member?(tally.used, "y")
  end
end
