defmodule Exromaji.Translator do
  @moduledoc false

  alias Exromaji.Table

  @doc false
  def katakana(text) do
    text
    |> normalize
    |> hira2kata
    |> String.codepoints
    |> detect_romaji
  end

  @doc false
  def hiragana(text) do
    text
    |> normalize
    |> hira2kata
    |> String.codepoints
    |> detect_romaji
    |> kata2hira
  end

  @doc false
  def romaji(text) do
    text
    |> normalize
    |> hira2kata
    |> String.codepoints
    |> detect_katakana
  end

  @doc false
  def sound(text) do
    letter =
      text
      |> katakana
      |> String.codepoints
      |> List.first

    Table.kana2sound[letter]
  end

  defp detect_katakana(list, kana \\ "")
  defp detect_katakana([], kana), do: kana
  defp detect_katakana([head|tail], kana) do
    chars = Table.kana2romaji[List.first(tail)]
    case head do
      "ン" ->
        cond do
          chars && List.first(String.codepoints(List.first(chars))) in ["p", "b", "m"] ->
            detect_katakana(tail, kana <> "m")
          true ->
            detect_katakana(tail, kana <> "n")
        end
      "ッ" ->
        cond do
          is_nil(chars) || List.first(tail) in ["a", "i", "u", "e", "o", "n", nil] ->
            detect_katakana(tail, kana <> "xtsu")
          true ->
            detect_katakana(tail, kana <> List.first(String.codepoints(List.first(chars))))
        end
      _ ->
        case pos_loop(Table.kana2romaji, [head] ++ tail) do
          {_, nil} ->       detect_katakana(tail, kana <> head)
          {tail, letter} -> detect_katakana(tail, kana <> List.first(letter))
        end
    end
  end

  defp detect_romaji(list, kana \\ "")
  defp detect_romaji([], kana), do: kana
  defp detect_romaji([head|tail], kana) do
    cond do
      # ン
      head == "m" && Enum.member?(["p", "b", "m"], List.first(tail)) ->
        detect_romaji(tail, kana <> "ン")
      # ッ
      (
        head == List.first(tail) && Regex.match?(~r/[a-z]/, head) &&
       !Enum.member?(["a", "i", "u", "e", "o", "n"], head)
      ) ->
        detect_romaji(tail, kana <> "ッ")
      # otherwise
      true ->
        case pos_loop(Table.romaji2kana, [head] ++ tail) do
          {_, nil}       -> detect_romaji(tail, kana <> head)
          {tail, letter} -> detect_romaji(tail, kana <> letter)
        end
    end
  end

  defp pos_loop(map, list), do: pos_loop(map, list, 3)
  defp pos_loop(map, list, num) do
    case letter = map[Enum.join(Enum.take(list, num))] do
      nil ->
        if num > 1, do: pos_loop(map, list, num - 1), else: {list, nil}
      _ ->
        {Enum.slice(list, num, length(list)), letter}
    end
  end

  @doc false
  def hira2kata(text) when is_binary(text), do: hira2kata(to_char_list(text))
  def hira2kata(text) when is_atom(text), do: hira2kata(to_char_list(text))
  def hira2kata(text) when is_list(text) do
    :os.cmd(:string.join(['echo ', prepare(text), ' | nkf --katakana -Ww'], ''))
      |> parse_stdout
  end
  def hira2kata(_), do: nil

  @doc false
  def kata2hira(text) when is_binary(text), do: kata2hira(to_char_list(text))
  def kata2hira(text) when is_atom(text), do: kata2hira(to_char_list(text))
  def kata2hira(text) when is_list(text) do
    :os.cmd(:string.join(['echo ', prepare(text), ' | nkf --hiragana -Ww'], ''))
      |> parse_stdout
  end
  def kata2hira(_), do: nil

  @doc false
  def normalize(text) when is_binary(text), do: normalize(to_char_list(text))
  def normalize(text) when is_atom(text), do: normalize(to_char_list(text))
  def normalize(text) when is_list(text) do
    :os.cmd(:string.join(['echo ', prepare(text), ' | nkf -mZ0Wwh0'], ''))
      |> parse_stdout
      |> String.downcase
  end
  def normalize(_), do: nil

  defp parse_stdout(outstring) do
    outstring
      |> to_string
      |> String.split("\n")
      |> List.first
  end

  defp prepare(text) do
    text
    |> to_string
    |> String.codepoints
    |> Enum.map(fn(p) ->
      if p in ["'", "\"", "&", ";", "|", "<", ">", "(", ")", "`"], do: ~s(\\#{p}), else: p
    end)
    |> Enum.join
    |> to_char_list
  end

end
