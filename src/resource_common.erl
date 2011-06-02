-module(resource_common).
-export([is_authorized/2]).

is_authorized(ReqData, State) ->
    {false, ReqData, State}.
