defmodule RaceStats.Repo do
  use Ecto.Repo,
    otp_app: :race_stats,
    adapter: Ecto.Adapters.Postgres
end
