defmodule Elixirrest do
  use Maru.Router

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Elixirrest.AgentWorker, [])
    ]

    opts = [strategy: :one_for_one, name: Elixirrest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
