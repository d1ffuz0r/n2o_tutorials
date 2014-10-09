-module(routes).
-include_lib("n2o/include/wf.hrl").
-export([init/2, finish/2]).

finish(State, Ctx) ->
    {ok, State, Ctx}.

init(State, Ctx) ->
    Path = wf:path(Ctx#cx.req),
    {ok, State, Ctx#cx{path=Path,module=route_prefix(Path)}}.

route_prefix(P) -> route(P).

route(<<"/erlydtl_page">>) -> erlydtl_page; 
route(<<"/n2o_page">>) -> n2o_page;
route(_)          -> index.
