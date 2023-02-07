defmodule OfficeWeb.PageController do
  use OfficeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
