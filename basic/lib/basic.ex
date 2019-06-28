defmodule Basic do
  @moduledoc """
  Documentation for Basic.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Basic.hello()
      :world

  """
  def hello do
    :world
  end

  def q1 do
    # ファイルの読み込み
    data = File.stream!("data.json")

    # JSON文字列をmapに変換
    map_data = Enum.map(data, fn d -> Poison.decode!(d) end)

    # age <= 20 でフィルタリング
    filtered_data = Enum.filter(map_data, fn d -> d["age"] <= 20 end)

    # 件数を取得
    Enum.count(filtered_data)
  end

  # パイプ演算子を使ったパターン
  def q1_2 do
    "data.json"
    |> File.stream!
    |> Enum.map(fn d -> Poison.decode!(d) end)
    |> Enum.filter(fn d -> d["age"] <= 20 end)
    |> Enum.count
  end

  # Streamを使った実装
  def q2_1 do
    "data.json"
    |> File.stream!
    |> Stream.map(fn d -> Poison.decode!(d) end)
    |> Stream.filter(fn d -> d["age"] <= 20 end)
    |> Enum.count
  end

  # Flowを使った実装
  def q2_2 do
    "data.json"
    |> File.stream!
    |> Flow.from_enumerable
    |> Flow.map(fn d -> Poison.decode!(d) end)
    |> Flow.partition
    |> Flow.filter(fn d -> d["age"] <= 20 end)
    |> Enum.count
  end
end
