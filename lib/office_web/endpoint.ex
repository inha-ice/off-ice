defmodule OfficeWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :office

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  @session_options [
    store: :cookie,
    key: "_office_key",
    signing_salt: "somesigningsalt"
  ]
  socket "/live", Phoenix.LiveView.Socket, websocket: [connect_info: [session: @session_options]]

  plug Plug.Session, @session_options

  plug OfficeWeb.Router
end
