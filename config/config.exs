import Config

config :office, OfficeWeb.Endpoint,
  http: [ip: {0, 0, 0, 0}, port: 4000]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
