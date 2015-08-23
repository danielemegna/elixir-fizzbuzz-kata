defmodule FizzBuzzTest do
  use ExUnit.Case

  test "number to string" do
    assertFizzBuzz 1, "1"
  end
  
  test "multiples of 3 are fizz" do
    assertFizzBuzz 9, "Fizz"
  end

  test "multiples of 5 are buzz" do
    assertFizzBuzz 10, "Buzz"
  end

  test "multiples of 3 and 5 are fizzbuzz" do
    assertFizzBuzz 15, "FizzBuzz"
  end

  defp assertFizzBuzz n, expected do
    assert FizzBuzz.work(n) == expected
  end
end
