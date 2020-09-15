defmodule II61.Internal.Connection do
  @moduledoc false

  use Instream.Connection,
    config: [
      auth: [username: "instream_test", password: "instream_test"]
    ]
end
