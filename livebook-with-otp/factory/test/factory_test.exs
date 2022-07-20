defmodule FactoryTest do
  use ExUnit.Case
  doctest Factory

  test "greets the world" do
    assert Factory.hello() == :world
  end
end
