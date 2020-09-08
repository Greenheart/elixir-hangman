defmodule TextClient.Interact do
  alias TextClient.{State, Player}

  # ------ Public API ------

  def start() do
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
