-module(n2o_page).
-export([main/0]).
-include_lib("n2o/include/wf.hrl").

main() ->
  #panel{body = <<"Hello records template!">>}.
