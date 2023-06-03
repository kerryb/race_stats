defmodule RaceStats.Races.Schema.Event do
  @moduledoc """
  Schema for an event that may have multiple instances (eg the Woodbridge 10k
  in 2022 and 2023 are one event).
  """

  use TypedEctoSchema

  alias RaceStats.Races.Schema.Result

  typed_schema "events" do
    field(:name, :string, enforce: true, null: false)
    has_many(:result, Result)
    timestamps(type: :utc_datetime)
  end
end
