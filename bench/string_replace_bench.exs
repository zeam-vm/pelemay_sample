defmodule StringReplaceBench do
  use Benchfella

  @list ["FizzBuzz", """
  abcdefghi
  FizzFizz
  """,
  """
  hogehoge
  """
  ]

  setup_all do
    PelemaySample.string_replace(@list)
    {:ok, nil}
  end

  bench "Enum String.replace" do
    @list
    |> PelemaySample.enum_string_replace
  end

  bench "Flow String.replace" do
    @list
    |> PelemaySample.flow_string_replace
  end

  bench "Pelemay String.replace" do
    @list
    |> PelemaySample.string_replace
  end
end