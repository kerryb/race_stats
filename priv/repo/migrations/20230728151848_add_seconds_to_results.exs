defmodule RaceStats.Repo.Migrations.AddSecondsToResults do
  use Ecto.Migration

  def change do
    alter table(:results) do
      add :seconds, :integer
    end
  end
end
