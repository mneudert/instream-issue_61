defmodule II61.Alpha.MixProject do
  use Mix.Project

  def project do
    [
      app: :ii61_alpha,
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
      mod: {II61.Alpha, []},
      extra_applications: [:instream, :logger]
    ]
  end

  defp deps do
    [
    ]
  end
end
