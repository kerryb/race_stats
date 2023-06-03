defmodule RaceStats.Races.RacesTest do
  use ExUnit.Case, async: true

  alias RaceStats.Races

  describe "RaceStats.Races.results/0" do
    test "returns an empty list if there are no results" do
      assert Races.results() == []
    end
  end
end
