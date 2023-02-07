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
      {:ecto, "~> 3.9"},
      {:ecto_sql, "~> 3.9"},
      {:jason, "~> 1.4"},
      {:phoenix, "~> 1.6"},
      {:phoenix_html, "~> 3.2"},
      {:phoenix_live_reload, "~> 1.4", only: :dev},
      {:phoenix_live_view, "~> 0.18.11"},
      {:plug_cowboy, "~> 2.6"},
      {:postgrex, "~> 0.16.5"}
    ]
  end
end
