defmodule Revive.Repo do
  use Ecto.Repo,
    otp_app: :revive,
    adapter: Ecto.Adapters.Postgres
end
