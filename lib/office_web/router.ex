defmodule OfficeWeb.Router do
  use OfficeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {OfficeWeb.LayoutView, :root}
  end

  scope "/", OfficeWeb do
    pipe_through :api
  end

  scope "/", OfficeWeb do
    pipe_through :browser
    get "/", PageController, :index
  end
end
