defmodule RaceStats.Races.Schema.Result do
  @moduledoc """
  Schema for an athlete’s result at an instance of an event.
  """

  use TypedEctoSchema

  alias RaceStats.Races.Schema.Event

  typed_schema "results" do
    belongs_to(:event, Event)
    timestamps(type: :naive_datetime_usec)
  end
end
