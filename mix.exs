defmodule PelemaySample.MixProject do
  use Mix.Project

  def project do
    [
      app: :pelemay_sample,
      version: "0.3.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:benchfella, :logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:pelemay, "~> 0.0.15"},

      # Benchmark dependencies
      {:benchfella, "~> 0.3.5"},
      {:flow, "~> 1.0.0"}
    ]
  end

  defp package() do
    [
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/zeam-vm/pelemay_sample"}
    ]
  end
end
