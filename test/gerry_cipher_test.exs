defmodule GerryCipherTest do
  use ExUnit.Case
  doctest GerryCipher

  test "greets the world" do
    assert GerryCipher.hello() == :world
  end
end
