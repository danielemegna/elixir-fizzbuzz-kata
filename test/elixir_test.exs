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

  test "multiples of 7 are bang" do
    assertFizzBuzz 14, "Bang"
  end

  test "composed with 3 and 7 multiples" do
    assertFizzBuzz 21, "FizzBang"
  end
  
  test "composed with 5 and 7 multiples" do
    assertFizzBuzz 70, "BuzzBang"
  end

  test "composed with 3, 5 and 7 multiples" do
    assertFizzBuzz 105, "FizzBuzzBang"
  end

  #test "new rule: if number contains divisor, then is akin with it" do
    #assertFizzBuzz 31, "Fizz"
  #end

  defp assertFizzBuzz n, expected do
    assert FizzBuzz.work(n) == expected
  end
end
