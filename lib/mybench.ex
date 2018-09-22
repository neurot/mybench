defmodule Mybench do
  @moduledoc """
  Documentation for Mybench.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Mybench.hello()
      :world

  """
  def hello do
    :world
  end


  def start_benchmark do
    list = Enum.to_list(1..10_000)
    map_fun = fn i -> [i, i * i] end

    Benchee.run(
      %{
        "flat_map" => fn -> Enum.flat_map(list, map_fun) end,
        "map.flatten" => fn -> list |> Enum.map(map_fun) |> List.flatten() end
      },
      time: 10,
      memory_time: 2
    )
  end
end
