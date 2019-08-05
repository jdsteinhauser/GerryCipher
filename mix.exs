defmodule GerryCipher.MixProject do
  use Mix.Project

  def project do
    [
      app: :gerry_cipher,
      description: description(),
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jdsteinhauser/gerry_cipher"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def description, do: "Encoding based on Ugly Gerry typeface"

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
