defmodule FizzBuzz do

  @dictionary [
    {3, "Fizz"},
    {5, "Buzz"},
  ]

  def work(n), do: work(n, @dictionary, "")

  defp work(n, [ {divisor, word} | tail ], partial_result) do
    if is_akin?(n, divisor), do: partial_result = partial_result <> word
    work(n, tail, partial_result)
  end

  defp work(n, [], ""), do: to_string(n)
  defp work(_, [], final_result), do: final_result

  defp is_akin?(n, divisor) when rem(n, divisor) == 0, do: true
  defp is_akin?(_, _), do: false

end
