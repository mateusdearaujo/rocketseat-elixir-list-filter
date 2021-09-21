defmodule ListFilter do
  require Integer

  def call(list) do
    Enum.reduce(list, 0, fn value, acc -> verify_odd(Integer.parse(value)) + acc end)
  end

  defp verify_odd({value, _string}) when Integer.is_odd(value), do: 1

  defp verify_odd(_value), do: 0
end
