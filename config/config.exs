import Config

config :office,
  ecto_repos: [Office.Repo]

config :office, Office.Repo,
  database: "office",
  username: "icesa",
  password: "asdf1234",
  hostname: "localhost"

config :office, OfficeWeb.Endpoint,
  http: [ip: {0, 0, 0, 0}, port: 4000],
  render_errors: [view: OfficeWeb.ErrorView, accepts: ~w(html json), layout: false],
  live_view: [signing_salt: "hH5qonxXlKOT/KCmJ9mtrVYL+McsjSq9"]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
