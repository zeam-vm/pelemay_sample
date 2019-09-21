defmodule LogisticMapBench do
  use Benchfella

  @list_0x1000  (1..0x1000) |> Enum.to_list

  bench "Enum" do
    @list_0x1000
    |> PelemaySample.enum_logistic_map
  end

  bench "Flow" do
    @list_0x1000
    |> PelemaySample.flow_logistic_map
  end

  bench "Accelerated" do
    @list_0x1000
    |> PelemaySample.logistic_map
  end
end