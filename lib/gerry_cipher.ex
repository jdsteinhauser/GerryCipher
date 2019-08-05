defmodule GerryCipher do
  @moduledoc """
  Documentation for GerryCipher, an encoder based on the [Ugly Gerry typeface](https://twitter.com/UglyGerry/status/1153661354462588929)
  Upper and lower case letters are the two letter US state abbreviation (in upper and lower case, respectively)
  and their two digit districts. If a letter was comprised of multiple districts, the one on the left/top corresponds to the code
  for the uppercase letter and the one on the right/bottom is the code for the lowercase letter. Since 'M' and 'W' are reflections
  of each other, the codes for 'W' (80YN) and 'w' (80yn) are the reverse of 'M' (NY08) and 'm' (ny08).

  Since Ugly Gerry did not provide digits, the ten largest congressional districts by area were used for the digits 1..9,0.
  The '+' and '/' seen in base64 encoding become Puerto Rico and Washington DC, the two longest non-voting representatives.
  """

  @char_map %{
    ?A => "CA03", ?a => "tx35", ?1 => "AK01",
    ?B => "OH12", ?b => "oh07", ?2 => "MN01",
    ?C => "CT01", ?c => "ct01", ?3 => "WY01",
    ?D => "MO08", ?d => "mo08", ?4 => "SD01",
    ?E => "MO06", ?e => "mo06", ?5 => "NM02",
    ?F => "OR05", ?f => "or05", ?6 => "OR02",
    ?G => "OH04", ?g => "oh04", ?7 => "ND01",
    ?H => "NC06", ?h => "nc06", ?8 => "NE03",
    ?I => "TX15", ?i => "tx15", ?9 => "TX23",
    ?J => "IL18", ?j => "il18", ?0 => "NV02",
    ?K => "AL01", ?k => "al01", ?+ => "PR01",
    ?L => "NY07", ?l => "ny07", ?/ => "DC01",
    ?M => "NY08", ?m => "ny08",
    ?N => "IL11", ?n => "il11",
    ?O => "AZ06", ?o => "az06",
    ?P => "FL25", ?p => "fl25",
    ?Q => "TX12", ?q => "tx12",
    ?R => "OH10", ?r => "mi13",
    ?S => "TN04", ?s => "tn04",
    ?T => "CA43", ?t => "ca43",
    ?U => "IL04", ?u => "il04",
    ?V => "NJ05", ?v => "nj05",
    ?W => "80YN", ?w => "80yn",
    ?X => "CA08", ?x => "ca14",
    ?Y => "IL12", ?y => "il12",
    ?Z => "IN08", ?z => "oh08"
  }

  @doc """
  Encode raw binary data in Gerry Cipher.

  ## Examples

      iex> GerryCipher.encode_bytes("Hello world")
      "TN04OH04NJ05tn04oh07OH04NE03oh04mo08MN01TX23il12oh07OH04TX12"
  """
  def encode_bytes(data) do
    data
    |> Base.encode64(padding: false)
    |> to_charlist()
    |> Enum.map(&(Map.get(@char_map, &1)))
    |> Enum.join("")
  end

  @doc """
  Encode alpha-numeric strings in Gerry Cipher.

  ## Examples

      iex> GerryCipher.encode_alpha_numeric("Attack at dawn")
      "CA03ca43ca43tx35ct01al01 tx35ca43 mo08tx3580ynil11"
  """
  def encode_alpha_numeric(str) do
    str
    |> to_charlist()
    |> Enum.map(&(Map.get(@char_map, &1, [&1])))
    |> Enum.join("")
  end
end
