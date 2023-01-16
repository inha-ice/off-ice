defmodule Office.MixProject do
  use Mix.Project

  def project do
    [
      app: :office,
      version: "0.1.0",
      elixir: "~> 1.12",
      compilers: Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :runtime_tools],
      mod: {Office.Application, []}
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.4"},
      {:phoenix, "~> 1.6"},
      {:phoenix_live_reload, "~> 1.4", only: :dev},
      {:phoenix_live_view, "~> 0.18.7"},
      {:plug_cowboy, "~> 2.6"}
    ]
  end
end
