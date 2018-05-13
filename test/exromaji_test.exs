defmodule ExromajiTest do
  use ExUnit.Case
  doctest Exromaji

  test "Simply hiragana" do
    assert Exromaji.hiragana("hiragana") == "ひらがな"
  end

  test "Hiragana incldues nn letter" do
    assert Exromaji.hiragana("hiragana!nn!!") == "ひらがな!ん!!"
  end

  # test "Hiragana incldues xtu letters" do
  # assert Exromaji.hiragana("hiragana!xtunn!!") == "ひらがな!っん!!"
  # end

  test "Hiragana includes quote" do
    assert Exromaji.hiragana("hira'gana") == "ひら'がな"
  end

  test "Simply katakana" do
    assert Exromaji.katakana("hiragana") == "ヒラガナ"
  end

  test "Katakana incldues nn letter" do
    assert Exromaji.katakana("hiragana!nn!!") == "ヒラガナ!ン!!"
  end

  # test "Katakana incldues xtu letters" do
  # assert Exromaji.katakana("hiragana!xtunn!!") == "ヒラガナ!ッン!!"
  # end

  test "Katakana includes quote" do
    assert Exromaji.katakana("hira'gana") == "ヒラ'ガナ"
  end

  test "Simply romaji" do
    assert Exromaji.romaji("ヒラガナ") == "hiragana"
  end

  test "Romaji incldues nn letter 1" do
    assert Exromaji.romaji("ヒラガナ!ン!!") == "hiragana!n!!"
  end

  test "Romaji incldues nn letter 2" do
    assert Exromaji.romaji("シーランド") == "shi-rando"
  end

  test "Romaji incldues xtu letters" do
    assert Exromaji.romaji("ヒラガナ!ッン!!") == "hiragana!xtsun!!"
  end

  test "Romaji includes quote" do
    assert Exromaji.romaji("ヒラ'ガナ") == "hira'gana"
  end

  test "Romaji includes same double letters" do
    assert Exromaji.romaji("コック") == "kokku"
  end

  test "Romaji includes same double letters 2" do
    assert Exromaji.romaji("かったるい") == "kattarui"
  end

  test "Romaji includes same double letters 3" do
    assert Exromaji.romaji("ハンコック") == "hankokku"
  end

  test "Sound 1" do
    assert Exromaji.sound("ギャオス") == "か"
  end

  test "Sound 2" do
    assert Exromaji.sound("IYカード") == "あ"
  end

  test "Sound 3" do
    assert Exromaji.sound("Japan") == "さ"
  end

  test "Sound 4" do
    assert Exromaji.sound("ねんとう") == "な"
  end

  test "Sound 5" do
    assert Exromaji.sound("愛のり") == nil
  end
end
