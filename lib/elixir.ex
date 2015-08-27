defmodule FizzBuzz do

  @dictionary [
    {3, "Fizz"},
    {5, "Buzz"},
  ]

  def work(n), do: work(n, @dictionary, "")

  defp work(n, [ {divisor, word} | tail ], result) do
    case rem(n, divisor) do
      0 -> work(n, tail, result <> word)
      _ -> work(n, tail, result)
    end
  end

  defp work(n, [], ""), do: to_string(n)
  defp work(_, [], result), do: result
end
