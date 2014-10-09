-module(erlydtl_page).
-export([main/0]).
-include_lib("n2o/include/wf.hrl").

main() ->
  [#dtl{file="example", ext="dtl", bindings=[{name,<<"N2O">>}]}].
