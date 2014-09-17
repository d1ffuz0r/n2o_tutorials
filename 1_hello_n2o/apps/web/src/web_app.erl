-module(web_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1, start/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start() ->
  application:ensure_all_started(web),
  application:set_env(n2o, route, routes),
  application:start(web).

start(_StartType, _StartArgs) ->
    web_sup:start_link().

stop(_State) ->
    ok.
