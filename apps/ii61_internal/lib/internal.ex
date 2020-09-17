defmodule II61.Internal do
  @moduledoc false

  use Application

  def start(_type, _args) do
    IO.inspect(__MODULE__, label: "Application.start/0")

    children = [
      II61.Internal.Connection
    ]

    opts = [strategy: :one_for_one, name: __MODULE__.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
