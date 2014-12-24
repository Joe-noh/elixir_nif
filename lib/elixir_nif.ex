defmodule ElixirNif do
  @on_load {:init, 0}

  def init do
    :ok = :erlang.load_nif('priv/elixir_nif', 0)
  end

  def atom,    do: exit(:nif_not_loaded)
  def binary,  do: exit(:nif_not_loaded)
  def string,  do: exit(:nif_not_loaded)
  def double,  do: exit(:nif_not_loaded)
  def integer, do: exit(:nif_not_loaded)
  def list,    do: exit(:nif_not_loaded)
  def tuple,   do: exit(:nif_not_loaded)
end
