defmodule RaceStats.Races.RacesTest do
  use RaceStats.DataCase, async: true

  alias RaceStats.Races

  describe "RaceStats.Races.results/0" do
    test "returns all results, newest first, with events preloaded" do
      %{id: event_id} = event = insert(:event)
      %{id: result_id_1} = insert(:result, event: event, date: ~D[2023-05-28])
      %{id: result_id_2} = insert(:result, event: event, date: ~D[2023-06-04])
      assert [%{id: ^result_id_2, event: %{id: ^event_id}}, %{id: ^result_id_1}] = Races.results()
    end
  end
end
