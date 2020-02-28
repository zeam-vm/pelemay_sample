defmodule PelemaySample do
  import Pelemay
  require Pelemay

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
      |> Enum.map(& String.replace(&1, "Fizz", "Buzz"))
    end

    def list_minus_2(list) do
      list
      |> Enum.map(&(&1 - 2))
    end

    def list_plus_2(list) do
      list
      |> Enum.map(fn x -> x + 2 end)
    end

    def list_mult_2(list) do
      list
      |> Enum.map(fn x -> x * 2 end)
    end

    def list_div_2(list) do
      list
      |> Enum.map(&(&1 / 2))
    end

    def list_mod_2(list) do
      list |> Enum.map(&rem(&1, 2))
    end

    def list_mod2_plus1(list) do
      list |> Enum.map(&(rem(&1, 2) + 1))
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
    |> Enum.map(& String.replace(&1, "Fizz", "Buzz"))
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
    |> Flow.map(& String.replace(&1, "Fizz", "Buzz"))
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
