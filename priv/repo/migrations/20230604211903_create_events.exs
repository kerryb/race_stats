defmodule RaceStats.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :text
      timestamps
    end
  end
end
