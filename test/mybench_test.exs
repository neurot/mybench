defmodule MybenchTest do
  use ExUnit.Case
  doctest Mybench

  test "greets the world" do
    assert Mybench.hello() == :world
  end
end
