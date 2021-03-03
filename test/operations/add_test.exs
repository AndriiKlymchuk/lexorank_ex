defmodule LexorankEx.Oparations.SubstractTest do
  use ExUnit.Case
  import LexorankEx.Oparations.Add

  test "#call" do
    assert [3] == call([2], [1])
    assert [0, 1] == call([61], [1])
    assert [1, 1] == call([61], [2])
    assert [0, 1] == call([61, 0], [1, 0])
    assert [0, 61, 1] == call([61, 61], [1, 61])  #> 99 + 91 => 190
    assert [1, 1] == call([0, 1], [1, 0])
    assert [1, 0, 1, 9] == call([0, 0, 1, 9], [1, 0, 0, 0])
  end
end

