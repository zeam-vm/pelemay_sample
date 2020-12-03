defmodule FloatMultBench do
  use Benchfella

  @range_0x1000 (1..0x1000)

  setup_all do
    PelemaySample.float_mult(@range_0x1000)
    {:ok, nil}
  end

  bench "Enum" do
    @range_0x1000
    |> PelemaySample.enum_float_mult
  end

  bench "Flow" do
    @range_0x1000
    |> PelemaySample.flow_float_mult
  end

  bench "Pelemay" do
    @range_0x1000
    |> PelemaySample.float_mult
  end
end