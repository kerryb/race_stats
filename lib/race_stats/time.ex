defmodule RaceStats.Time do
  @moduledoc "Utility functions for time."

  @spec format_seconds(integer() | nil) :: String.t()
  def format_seconds(nil), do: ""

  def format_seconds(seconds) when seconds < 3600 do
    Enum.map_join([div(seconds, 60), Integer.mod(seconds, 60)], ":", &pad/1)
  end

  def format_seconds(seconds) do
    Enum.join(
      [
        seconds
        |> div(3600)
        |> to_string(),
        seconds
        |> div(60)
        |> Integer.mod(60)
        |> pad(),
        seconds
        |> Integer.mod(60)
        |> pad()
      ],
      ":"
    )
  end

  defp pad(value) do
    value
    |> to_string()
    |> String.pad_leading(2, "0")
  end
end
