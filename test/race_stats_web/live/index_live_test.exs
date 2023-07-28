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
        [%Result{event: %Event{name: "Newmarket"}, date: ~D[2023-06-25], seconds: 46 * 60 + 4}]
      end

      {:ok, view, _html} = live(conn, "/")
      assert view |> element("td", "Newmarket") |> has_element?()
      assert view |> element("td", "25 Jun 2023") |> has_element?()
      assert view |> element("td", "46:04") |> has_element?()
    end
  end
end
