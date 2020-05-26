defmodule DeriqArt.Repo do
  use Ecto.Repo,
    otp_app: :deriqArt,
    adapter: Ecto.Adapters.Postgres
end
