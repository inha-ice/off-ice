defmodule OfficeWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :office

  @session_options [
    store: :cookie,
    key: "_office_key",
    signing_salt: "somesigningsalt"
  ]
  socket "/live", Phoenix.LiveView.Socket, websocket: [connect_info: [session: @session_options]]

  plug Plug.Session, @session_options

  plug Plug.Static,
    at: "/",
    from: :office,
    gzip: false,
    only: ~w(assets fonts images favicon.ico robots.txt)

  plug OfficeWeb.Router
end
