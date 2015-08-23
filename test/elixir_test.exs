defmodule FizzBuzzTest do
  use ExUnit.Case

  test "number to string" do
    assert FizzBuzz.work(1) == "1"
  end
  
  test "multiples of 3 are fizz" do
    assert FizzBuzz.work(9) == "Fizz"
  end
end
