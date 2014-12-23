defmodule Mix.Tasks.Compile.Nif do
  @shortdoc "example"

  use Mix.Task

  def run(_) do
    case Mix.shell.cmd("make") do
      0    -> :ok
      code -> raise Mix.Error, message: "make aborted!! [#{code}]"
    end
  end
end

