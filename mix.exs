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
      package: package(),
    ]
  end

  defp package do
  [
    name: :gerry_cipher,
    files: ["lib", "mix.exs", "README*", "LICENSE*"],
    maintainers: ["jason.steinhauser@gmail.com"],
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
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
