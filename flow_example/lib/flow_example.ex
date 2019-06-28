defmodule FlowExample do

  @calc_items 100000000
  @time_dim 1000000

  def stage1 do
    :timer.tc(fn -> 1..@calc_items
                    |> Flow.from_enumerable(stages: 1)
                    |> Flow.map(& &1 * 2)
                    |> Enum.to_list end)
    |> elem(0)
    |> Kernel./(@time_dim)
  end

  def stage2 do
    :timer.tc(fn -> 1..@calc_items
                    |> Flow.from_enumerable(stages: 2)
                    |> Flow.map(& &1 * 2)
                    |> Enum.to_list end)
    |> elem(0)
    |> Kernel./(@time_dim)
  end

  def stage3 do
    :timer.tc(fn -> 1..@calc_items
                    |> Flow.from_enumerable(stages: 3)
                    |> Flow.map(& &1 * 2)
                    |> Enum.to_list end)
    |> elem(0)
    |> Kernel./(@time_dim)
  end

  def stage4 do
    :timer.tc(fn -> 1..@calc_items
                    |> Flow.from_enumerable(stages: 4)
                    |> Flow.map(& &1 * 2)
                    |> Enum.to_list end)
    |> elem(0)
    |> Kernel./(@time_dim)
  end

  def stage8 do
    :timer.tc(fn -> 1..@calc_items
                    |> Flow.from_enumerable(stages: 8)
                    |> Flow.map(& &1 * 2)
                    |> Enum.to_list end)
    |> elem(0)
    |> Kernel./(@time_dim)
  end

  def stage16 do
    :timer.tc(fn -> 1..@calc_items
                    |> Flow.from_enumerable(stages: 16)
                    |> Flow.map(& &1 * 2)
                    |> Enum.to_list end)
    |> elem(0)
    |> Kernel./(@time_dim)
  end

  def stage32 do
    :timer.tc(fn -> 1..@calc_items
                    |> Flow.from_enumerable(stages: 32)
                    |> Flow.map(& &1 * 2)
                    |> Enum.to_list end)
    |> elem(0)
    |> Kernel./(@time_dim)
  end
end
