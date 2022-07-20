defmodule Factory.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Factory.Storage, [name: Factory.Storage]},
      {Factory.MinerSupervisor, []},
      {DynamicSupervisor, strategy: :one_for_one, name: Factory.DynamicMinerSupervisor}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Factory.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
