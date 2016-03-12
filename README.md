# Exromaji

[![Build Status](http://img.shields.io/travis/ikeikeikeike/exromaji.svg?style=flat-square)](http://travis-ci.org/ikeikeikeike/exromaji)
[![Hex version](https://img.shields.io/hexpm/v/exromaji.svg "Hex version")](https://hex.pm/packages/exromaji)
[![Hex downloads](https://img.shields.io/hexpm/dt/exromaji.svg "Hex downloads")](https://hex.pm/packages/exromaji)
[![Inline docs](https://inch-ci.org/github/ikeikeikeike/exromaji.svg)](http://inch-ci.org/github/ikeikeikeike/exromaji)
[![hex.pm](https://img.shields.io/hexpm/l/ltsv.svg)](https://github.com/ikeikeikeike/exromaji/blob/master/LICENSE)

A Elixir library for translating between hiragana, katakana, and romaji.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add exromaji to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:exromaji, "~> 0.2"}]
  end
  ```

  2. Exromaji package needs `nkf` command and it needs to install that in your environment when you don't have `nkf`.

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

Those provided functions cannot detect Kanji(漢字) in development, like this.

```Elixir
iex(7)> Exromaji.romaji "ローマ字"
"ro-ma字"
```

Although [exkanji package](https://github.com/ikeikeikeike/exkanji) are detecting Kanji(漢字). It also inspires a imitational interfaces from exromaji.
I suppose that you'll install [exkanji package](https://github.com/ikeikeikeike/exkanji) in your development as required.

```Elixir
iex(8)> Exkanji.romaji "ローマ字"
"ro-maji"
```


[API Reference](http://hexdocs.pm/exromaji/api-reference.html).


## Inspiration

- [mojinizer](https://github.com/ikayzo/mojinizer)
- [romaji](https://github.com/makimoto/romaji)
- [kana](https://github.com/gojp/kana)
