#include <string.h>
#include "erl_nif.h"

static ERL_NIF_TERM atom_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return enif_make_atom(env, "atom");
}

static ERL_NIF_TERM binary_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    ERL_NIF_TERM binary;
    memcpy(enif_make_new_binary(env, 6, &binary), "binary", 6);

    return binary;
}

static ERL_NIF_TERM string_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return enif_make_string(env, "string", ERL_NIF_LATIN1);
}

static ERL_NIF_TERM double_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return enif_make_double(env, 3.14);
}

static ERL_NIF_TERM integer_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return enif_make_int(env, 1);
}

static ERL_NIF_TERM list_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    ERL_NIF_TERM one   = enif_make_int(env, 1);
    ERL_NIF_TERM two   = enif_make_int(env, 2);
    ERL_NIF_TERM three = enif_make_int(env, 3);

    return enif_make_list3(env, one, two, three);
}

static ERL_NIF_TERM tuple_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    ERL_NIF_TERM ok     = enif_make_atom(env, "ok");
    ERL_NIF_TERM result = enif_make_atom(env, "result");

    return enif_make_tuple2(env, ok, result);
}

static ErlNifFunc nif_funcs[] = {
    {"atom", 0, atom_nif},
    {"binary", 0, binary_nif},
    {"string", 0, string_nif},
    {"double", 0, double_nif},
    {"integer", 0, integer_nif},
    {"list", 0, list_nif},
    {"tuple", 0, tuple_nif}
};

ERL_NIF_INIT(Elixir.ElixirNif, nif_funcs, NULL, NULL, NULL, NULL)
