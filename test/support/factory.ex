defmodule RaceStats.Factory do
  @moduledoc false
  use ExMachina.Ecto, repo: RaceStats.Repo

  alias RaceStats.Races.Schema.Event
  alias RaceStats.Races.Schema.Result

  def event_factory do
    %Event{
      name: Faker.Address.city()
    }
  end

  def result_factory do
    %Result{
      event: build(:event),
      date: Faker.Date.backward(1000)
    }
  end
end
