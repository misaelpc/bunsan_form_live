defmodule BunsanFormLive.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BunsanFormLive.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: BunsanFormLive.PubSub}
      # Start a worker by calling: BunsanFormLive.Worker.start_link(arg)
      # {BunsanFormLive.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: BunsanFormLive.Supervisor)
  end
end
