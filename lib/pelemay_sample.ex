defmodule PelemaySample do
  import Pelemay

  @moduledoc """
  ```elixir
  defpelemay do
    def cal(list) do
      list
      |> Enum.map(& &1 + 2)
    |> Enum.map(fn x -> x * 2 end)
  end

  #=>
  def cal(list) do
    list
    |> PelemayNif.map_mult
    |> PelemayNif.map_plus
  end
  ```
  """
  defpelemay do
    def string_replace(list) do
      list
      |> Enum.map(&String.replace(&1, "Fizz", "Buzz"))
    end

    def float_mult(list) do
      list
      |> Enum.map(& &1 * 2)
    end

    def logistic_map(list) do
      list
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
      |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    end
  end

  def enum_string_replace(list) do
    list
    |> Enum.map(&String.replace(&1, "Fizz", "Buzz"))
  end

  def enum_float_mult(list) do
    list
    |> Enum.map(& &1 * 2)
  end

  def enum_logistic_map(list) do
    list
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
  end

  def flow_string_replace(list) do
    list
    |> Flow.from_enumerable()
    |> Flow.map(&String.replace(&1, "Fizz", "Buzz"))
    |> Enum.sort()
  end

  def flow_float_mult(list) do
    list
    |> Flow.from_enumerable()
    |> Flow.map(& &1 * 2)
    |> Enum.sort()
  end

  def flow_logistic_map(list) do
    list
    |> Flow.from_enumerable()
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Flow.map(&rem(22 * &1 * (&1 + 1), 6_700_417))
    |> Enum.sort()
  end
end
