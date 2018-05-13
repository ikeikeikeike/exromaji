defmodule Exromaji do
  @doc """
  Exromaji.romaji returns romaji text after translate working.
  """
  defdelegate romaji(text), to: Exromaji.Translator, as: :romaji

  @doc """
  Exromaji.katakana returns katakana text after translate working.
  """
  defdelegate katakana(text), to: Exromaji.Translator, as: :katakana

  @doc """
  Alias Exromaji.katakana
  """
  defdelegate kata(text), to: Exromaji.Translator, as: :katakana

  @doc """
  Exromaji.hiragana returns hiragana text after translate working.
  """
  defdelegate hiragana(text), to: Exromaji.Translator, as: :hiragana

  @doc """
  Alias hiragana
  """
  defdelegate hira(text), to: Exromaji.Translator, as: :hiragana

  @doc """
  Exromaji.sound returns japanese sound letter that like vowels and consonants after translate working.
  """
  defdelegate sound(text), to: Exromaji.Translator, as: :sound

  @doc """
  Hiragana are translated into katakana by Exromaji.hirakata.
  """
  defdelegate hira2kata(text), to: Exromaji.Translator, as: :hira2kata

  @doc """
  Katakana are translated into hiragana by Exromaji.kata2hira.
  """
  defdelegate kata2hira(text), to: Exromaji.Translator, as: :kata2hira
end
