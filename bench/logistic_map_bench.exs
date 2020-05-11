defmodule LogisticMapBench do
  use Benchfella

  @range_0x1000 (1..0x1000)

  setup_all do
    PelemaySample.logistic_map(@range_0x1000)
    {:ok, nil}
  end

  bench "Enum" do
    @range_0x1000
    |> PelemaySample.enum_logistic_map
  end

  bench "Flow" do
    @range_0x1000
    |> PelemaySample.flow_logistic_map
  end

  bench "Pelemay" do
    @range_0x1000
    |> PelemaySample.logistic_map
  end
end