defmodule AutoHangman.Prompter do
  alias AutoHangman.{State, Guesser}

  def random_move(game = %State{}) do
    guess = Guesser.get_random_letter(game)
    IO.puts("AutoHangman guess: " <> guess)
    check_input(guess, game)
  end

  defp check_input({:error, reason}, _) do
    IO.puts("Game ended: #{reason}")
    exit(:normal)
  end

  defp check_input(:eof, _) do
    IO.puts("Looks like you gave up...")
    exit(:normal)
  end

  defp check_input(input, game = %State{}) do
    input = String.trim(input)

    cond do
      input =~ ~r/\A[a-z]\z/ ->
        Map.put(game, :guess, input)

      true ->
        IO.puts("Please enter a single lowercase letter")
        random_move(game)
    end
  end
end
