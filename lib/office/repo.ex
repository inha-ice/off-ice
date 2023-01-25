defmodule Office.Repo do
  use Ecto.Repo,
    otp_app: :office,
    adapter: Ecto.Adapters.Postgres
end
