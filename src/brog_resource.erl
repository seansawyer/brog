%% @author Sean Sawyer <sean@seansawyer.org>
%% @copyright 2011 Sean Sawyer
%% @doc Root resource

-module(brog_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, State) ->
    {markdown:conv("# Hello there! #\nHello, markdown world"), ReqData, State}.
