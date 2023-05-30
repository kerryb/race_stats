defmodule RaceStats.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      RaceStatsWeb.Telemetry,
      # Start the Ecto repository
      RaceStats.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: RaceStats.PubSub},
      # Start Finch
      {Finch, name: RaceStats.Finch},
      # Start the Endpoint (http/https)
      RaceStatsWeb.Endpoint
      # Start a worker by calling: RaceStats.Worker.start_link(arg)
      # {RaceStats.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RaceStats.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  # coveralls-ignore-start
  def config_change(changed, _new, removed) do
    RaceStatsWeb.Endpoint.config_change(changed, removed)
    :ok
  end

  # coveralls-ignore-stop
end
