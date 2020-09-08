defmodule TextClient do
  defdelegate start(), to: TextClient.Interact

  # To keep order of guessed letters, we need to store is as a list.
  # This is because a MapSet will chcange the order.
end
