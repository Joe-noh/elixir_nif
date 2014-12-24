defmodule Mix.Tasks.Compile.Nif do
  @shortdoc "example"

  use Mix.Task

  @compiler  "clang"
  @erl_flags ["-I", :code.root_dir, "/erts-", :erlang.system_info(:version), "/include"] |> Enum.join
  @c_files   Path.wildcard("c_src/*.c")
  @out_so    "priv/elixir_nif.so"

  def run(_) do
    File.mkdir_p!("priv")

    [@compiler, @erl_flags, @c_files, "-shared", opts, "-o", @out_so]
    |> List.flatten
    |> Enum.join(" ")
    |> Mix.shell.cmd
  end

  defp opts do
    case :os.type do
      {:unix, :darwin} -> ~w(-dynamiclib -undefined dynamic_lookup)
      _other -> []
    end
  end
end

