defmodule FizzBuzz do

  @dictionary [
    {3, "Fizz"},
    {5, "Buzz"},
  ]

  def work(n), do: work(n, @dictionary, "")

  defp work(n, [ {divisor, word} | tail ], result) do
    if rem(n, divisor) == 0, do: result = result <> word
    work(n, tail, result)
  end

  defp work(n, [], ""), do: to_string(n)
  defp work(_, [], result), do: result
end
