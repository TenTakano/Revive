defmodule Revive.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      # Revive.Repo,
      # Start the Telemetry supervisor
      ReviveWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Revive.PubSub},
      # Start the Endpoint (http/https)
      ReviveWeb.Endpoint
      # Start a worker by calling: Revive.Worker.start_link(arg)
      # {Revive.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Revive.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ReviveWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
