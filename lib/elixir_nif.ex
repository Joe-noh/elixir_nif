defmodule ElixirNif do
  @on_load {:init, 0}

  def init do
    :ok = :erlang.load_nif('priv/out', 0)
  end

  def integer_one, do: exit(:nif_not_loaded)
end
