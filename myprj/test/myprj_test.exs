defmodule MyprjTest do
  use ExUnit.Case
  doctest Myprj

  test "greets the world" do
    assert Myprj.hello() == :world
  end
end
