defmodule II61.Main do
  @moduledoc false

  use Application

  def start(_type, _args) do
    _ = IO.inspect(II61.Internal.Connection.version(), label: "InfluxDB version")
    :pong = II61.Internal.Connection.ping()

    children = [
      II61.Internal.Connection
    ]

    opts = [strategy: :one_for_one, name: __MODULE__.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
