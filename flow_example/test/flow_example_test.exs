defmodule FlowExampleTest do
  use ExUnit.Case
  doctest FlowExample

  test "greets the world" do
    assert FlowExample.hello() == :world
  end
end
