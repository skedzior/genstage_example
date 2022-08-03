defmodule GenstageExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :genstage_example,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [
        :ethereumex,
        :websockex
      ],
      extra_applications: [:logger],
      mod: {GenstageExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:broadway, "~> 1.0"},
      {:broadway_dashboard, "~> 0.2.0"},
      {:off_broadway_redis_stream, "~> 0.2.0"},
      {:redix, "~> 1.1"},
      {:gen_stage, "~> 1.0.0"},
      {:websockex, "~> 0.4.3"},
      {:ethereumex, "~> 0.7.0"},
      {:ex_abi, "~> 0.5"},
      {:exw3, "~> 0.6"},
      {:web3x, "~> 0.6.4"},
    ]
  end
end
