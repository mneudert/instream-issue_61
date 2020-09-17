defmodule II61.Main do
  @moduledoc false

  use Application

  def start(_type, _args) do
    IO.inspect(__MODULE__, label: "Application.start/0")
    IO.inspect(II61.Internal.Connection.version(), label: "@main InfluxDB version")
    IO.inspect(II61.Internal.Connection.ping(), label: "@main Ping")

    children = []

    opts = [strategy: :one_for_one, name: __MODULE__.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
