defmodule AutoHangman.Interact do
  alias AutoHangman.{State, Player}

  # ------ Public API ------

  def start() do
    IO.puts("\nStarting new AutoHangman... Get ready!")

    # IDEA: let user choose AutoHangman strategy
    # Then run the game using that strategy
    # This needs to happen in the Player.continue() function

    Hangman.new_game()
    |> setup_state()
    |> Player.play()
  end

  # ----- Internal API -----

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman.tally(game)
    }
  end
end
