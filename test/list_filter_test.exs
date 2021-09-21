defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "should return number of odd values in list" do
    result = ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
    assert result == 3
  end
end
