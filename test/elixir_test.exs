defmodule FizzBuzzTest do
  use ExUnit.Case

  test "number to string" do
    assert FizzBuzz.work(1) == "1"
  end
end
