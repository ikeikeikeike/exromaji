# Exromaji

[![Build Status](http://img.shields.io/travis/ikeikeikeike/exromaji.svg?style=flat-square)](http://travis-ci.org/ikeikeikeike/exromaji)
[![Hex version](https://img.shields.io/hexpm/v/exromaji.svg "Hex version")](https://hex.pm/packages/exromaji)
[![Hex downloads](https://img.shields.io/hexpm/dt/exromaji.svg "Hex downloads")](https://hex.pm/packages/exromaji)

A Elixir library for converting between hiragana, katakana, and romaji.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add exromaji to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:exromaji, "~> 0.2"}]
  end
  ```

  2. Ensure exromaji is started before your application:

  ```elixir
  def application do
    [applications: [:exromaji]]
  end
  ```

  3. Exromaji package needs `nkf` command and it needs to install that in your environment when you don't have `nkf`.

  ```zsh
  $ brew install nkf
  ```

## Usage

Exromaji provides some convinient functions in Exromaji module through Exromaji.Translator and Exromaji.Table.
Those provided functions are able to translate into hiragana(ひらがな), katakana(カタカナ) and Romaji(ローマ字).

Into hiragana(ひらがな)
```Elixir
iex(1)> Exromaji.hiragana "ａ a A ア ｱ ァ ｧ あ ぁ 亜"
"あ あ あ あ あ ぁ ぁ あ ぁ 亜"
iex(2)> Exromaji.hiragana "ヒラガナ hiragana"
"ひらがな ひらがな"
```

Into katakana(カタカナ)
```Elixir
iex(3)> Exromaji.katakana "ａ a A ア ｱ ァ ｧ あ ぁ 亜"
"ア ア ア ア ア ァ ァ ア ァ 亜"
iex(4)> Exromaji.katakana "かたかな katakana"
"カタカナ カタカナ"
```

Into Romaji(ローマ字)
```Elixir
iex(5)> Exromaji.romaji "ａ a A ア ｱ ァ ｧ あ ぁ 亜"
"a a a a a ァ ァ a ァ 亜"
iex(6)> Exromaji.romaji "ローマジ ろーまじ"
"ro-maji ro-maji"
```


<!-- 

Those provided functions cannot detect Kanji(漢字) nowadays like this.

```Elixir
iex(7)> Exromaji.hiragana "ローマ字"
"ろーま字"
```

Although Kanji package can detect Kanji(漢字).

-->


[API Reference](http://hexdocs.pm/exromaji/api-reference.html).


## Inspiration

- https://github.com/ikayzo/mojinizer
- https://github.com/makimoto/romaji
- https://github.com/gojp/kana
