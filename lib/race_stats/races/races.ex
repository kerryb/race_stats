defmodule RaceStats.Races do
  @moduledoc """
  Context for race information, including results etc.
  """

  alias RaceStats.Races.Queries
  alias RaceStats.Repo

  def results do
    Repo.all(Queries.results())
  end
end
