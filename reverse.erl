%% @author norash1995
%% @doc @todo Add description to reverse.


-module(reverse).

%% ====================================================================
%% API functions
%% ====================================================================
-export([reverse1/1]).

reverse1([])->[];
reverse1([H|T])->[reverse1(T)|H].



%% ====================================================================
%% Internal functions
%% ====================================================================

