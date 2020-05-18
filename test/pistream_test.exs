defmodule PistreamTest do
  use ExUnit.Case
  doctest Pistream

  test "greets the world" do
    assert Pistream.hello() == :world
  end
end
