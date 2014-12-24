defmodule ElixirNifTest do
  use ExUnit.Case

  test "atom returns :atom" do
    assert ElixirNif.atom == :atom
  end

  test "binary returns \"binary\"" do
    assert ElixirNif.binary == "binary"
  end

  test "string returns 'string'" do
    assert ElixirNif.string == 'string'
  end

  test "double returns 3.14" do
    assert ElixirNif.double == 3.14
  end

  test "integer returns 1" do
    assert ElixirNif.integer == 1
  end

  test "list returns [1, 2, 3]" do
    assert ElixirNif.list == [1, 2, 3]
  end

  test "tuple returns {:ok, :result}" do
    assert ElixirNif.tuple == {:ok, :result}
  end
end
