#include "erl_nif.h"

static ERL_NIF_TERM integer_one_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return enif_make_int(env, 1);
}

static ErlNifFunc nif_funcs[] = {
    {"integer_one", 0, integer_one_nif}
};

ERL_NIF_INIT(Elixir.ElixirNif, nif_funcs, NULL, NULL, NULL, NULL)
