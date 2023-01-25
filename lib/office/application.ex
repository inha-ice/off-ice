defmodule Office.Application do
  use Application

  @impl true
  def config_change(changed, _new, removed) do
    OfficeWeb.Endpoint.config_change(changed, removed)
    :ok
  end

  @impl true
  def start(_type, _args) do
    children = [
      Office.Repo,
      OfficeWeb.Endpoint
    ]
    opts = [strategy: :one_for_one, name: Office.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
