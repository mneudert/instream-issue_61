defmodule II61.Internal.MixProject do
  use Mix.Project

  def project do
    [
      app: :ii61_internal,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {II61.Internal, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:instream, "~> 1.0"},
      {:ii61_alpha, in_umbrella: true}
    ]
  end
end
