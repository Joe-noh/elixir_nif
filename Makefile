CC = clang
ERL_INCLUDE = $(shell elixir -e '[:code.root_dir, "/erts-", :erlang.system_info(:version), "/include"] |> Enum.join |> IO.puts')

ERL_FLAGS = -I$(ERL_INCLUDE)
NIF_SRC = src/nif.c

ifeq ($(shell uname), Darwin)
	OPTIONS = -dynamiclib -undefined dynamic_lookup
endif

all:
	mkdir -p priv && $(CC) $(ERL_FLAGS) $(NIF_SRC) -shared $(OPTIONS) -o priv/out.so

