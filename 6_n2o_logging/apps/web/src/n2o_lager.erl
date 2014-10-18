-module(n2o_lager).
-export([info/3, warning/3, error/3]).
-compile([{parse_transform, lager_transform}]).

format_message(Module, String) ->
    wf:to_list([Module, ":", String]).

info(Module, String, Args) ->
    lager:info(format_message(Module, String), Args).

warning(Module, String, Args) ->
    lager:warning(format_message(Module, String), Args).

error(Module, String, Args) ->
    lager:error(format_message(Module, String), Args).
