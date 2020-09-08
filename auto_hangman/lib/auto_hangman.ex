defmodule AutoHangman do
  defdelegate start, to: AutoHangman.Interact

  # Spec

  # start new game
  # 1) Simple
  # guess random letters
  # detect endgame result

  # 2) Advanced
  # In dictionary, add new API endpoint to get all words of a given length
  # Get all words with the same length as the selected word
  # Get a MapSet with all letters and count occurences for every word.
  # Guess the letter with most occurences in words = the letter that will give most information
  # (maybe) output timer to see how long long each step takes
  # detect endgame result

  # ----------------------------

  # TODO 2: solve difficult task below

  # (Difficult) If you’d like an interesting challenge,
  # write another application where the computer plays
  # the hangman game. For a simple implementation you
  # could just blindly guess letters, starting at the
  # most frequent.

  # You could then optimize it by looking at the possible
  # words. You’ll need to add a new API function to the
  # dictionary to return all the words of a given length.
  # You can then use that list to decide which letter will
  # give you the most information based on the current game state.
end
