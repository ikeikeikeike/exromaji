defmodule Exromaji.Mixfile do
  use Mix.Project

  @description """
  A Elixir library for converting between hiragana, katakana, and romaji.
  """

  def project do
    [ app: :exromaji,
      name: "Exromaji",
      version: "0.2.0",
      elixir: "~> 1.2",
      description: @description,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      package: package,
      deps: deps,
      source_url: "https://github.com/ikeikeikeike/exfavicon" 
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp package do
    [ maintainers: ["Tatsuo Ikeda / ikeikeikeike"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/ikeikeikeike/exromaji"} ]
  end
end
