defmodule II61.Main.MixProject do
  use Mix.Project

  def project do
    [
      app: :ii61_main,
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
      mod: {II61.Main, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ii61_internal, in_umbrella: true}
    ]
  end
end
