defmodule FizzBuzz do
  def work(n) when n == 3 do
    "Fizz"
  end

  def work(n) do
    to_string n 
  end
end
