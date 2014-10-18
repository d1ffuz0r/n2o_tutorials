-module(index).
-compile(export_all).
-include_lib("n2o/include/wf.hrl").

main() ->
    wf:info(?MODULE, "True highload", []),
    <<"Hello N2O!">>.
