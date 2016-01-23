defmodule ExromajiTest do
  use ExUnit.Case
  doctest Exromaji

  test "Including quote" do
    assert Exromaji.hiragana("hira'gana") == "ひら'がな"
  end
end
