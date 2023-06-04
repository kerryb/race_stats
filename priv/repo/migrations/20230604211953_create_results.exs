defmodule RaceStats.Repo.Migrations.CreateResults do
  use Ecto.Migration

  def change do
    create table(:results) do
      add :event_id, references(:events)
      add :date, :date
      timestamps()
    end
  end
end
