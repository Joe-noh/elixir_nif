defmodule ElixirNifTest do
  use ExUnit.Case

  test "integer_one returns 1" do
    assert ElixirNif.integer_one == 1
  end
end
