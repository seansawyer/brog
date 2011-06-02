%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the brog application.

-module(brog_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for brog.
start(_Type, _StartArgs) ->
    brog_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for brog.
stop(_State) ->
    ok.
