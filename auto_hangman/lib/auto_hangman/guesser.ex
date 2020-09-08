defmodule AutoHangman.Guesser do
  alias AutoHangman.State

  @all_letters [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ]

  @doc """
  Get a random letter from the alphabet, as defined in @all_letters
  Will ensure the letter has not alrady been guessed
  """
  def get_random_letter(game = %State{}) do
    @all_letters
    |> Enum.filter(fn letter -> letter not in game.tally.used end)
    |> Enum.random()
  end

  def get_best_letter(game = %State{}) do
    #
  end
end
