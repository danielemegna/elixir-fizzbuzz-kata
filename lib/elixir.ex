defmodule FizzBuzz do
  def work(n) when rem(n, 3) == 0 do
    "Fizz"
  end

  def work(n) when rem(n, 5) == 0 do
    "Buzz"
  end

  def work(n) when is_integer(n) do
    to_string n 
  end
end
