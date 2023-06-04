# credo:disable-for-this-file Credo.Check.Readability.OnePipePerLine
defmodule RaceStatsWeb.IndexLiveTest do
  use RaceStatsWeb.ConnCase, async: true
  use Mimic.DSL

  import Phoenix.ConnTest
  import Phoenix.LiveViewTest

  alias RaceStats.Races
  alias RaceStats.Races.Schema.Event
  alias RaceStats.Races.Schema.Result

  @endpoint RaceStatsWeb.Endpoint

  describe "RaceStatsWeb.IndexLive" do
    test "displays a list of results", %{conn: conn} do
      stub Races.results() do
        [%Result{event: %Event{name: "Woodbridge"}, date: ~D[2023-05-23]}]
      end

      {:ok, view, _html} = live(conn, "/")
      assert view |> element("td", "Woodbridge") |> has_element?()
    end
  end
end
