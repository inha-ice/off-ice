import Config

config :office,
  ecto_repos: [Office.Repo]

config :office, Office.Repo,
  database: "office",
  username: "icesa",
  password: "asdf1234",
  hostname: "localhost"

config :office, OfficeWeb.Endpoint,
  http: [ip: {0, 0, 0, 0}, port: 4000]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
