defmodule RaceStatsWeb.IndexLive do
  @moduledoc false

  use RaceStatsWeb, :live_view

  import RaceStats.Time

  alias RaceStats.Races

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok, assign(socket, results: Races.results())}
  end
end
