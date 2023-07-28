defmodule RaceStats.TimeTest do
  use ExUnit.Case, async: true

  alias RaceStats.Time

  describe "RaceStats.Time.format_seconds/1" do
    test "formats nil as an empty string" do
      assert Time.format_seconds(nil) == ""
    end

    test "formats times under an hour as mm:ss" do
      assert Time.format_seconds(61) == "01:01"
    end

    test "formats times over an hour as h:mm:ss" do
      assert Time.format_seconds(3661) == "1:01:01"
    end
  end
end
