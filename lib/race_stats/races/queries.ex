defmodule RaceStats.Races.Queries do
  @moduledoc """
  Ecto queries for the Races Context.
  """

  import Ecto.Query

  alias RaceStats.Races.Schema.Result

  def results do
    from r in Result, preload: :event, order_by: {:desc, r.date}
  end
end
