import Config

config :office, OfficeWeb.Endpoint,
  code_reloader: true,
  debug_errors: true,
  check_origin: false

config :phoenix, :plug_init_mode, :runtime
