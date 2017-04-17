%% @author norash1995
%% @doc @todo Add description to another.


-module(another).

%% ====================================================================
%% API functions
%% ====================================================================
-export([reverse2/1, find/2]).

reverse2(L)->reverse2(L,[]).
reverse2([],L)->L;
reverse2([H|T],L)->
	reverse2(T,[H|L]).

find(L,X)->find(L,X,0).
find([],_,N)->N;
find([H|T],H,N)->
	find(T,H,1+N);
find([H|T],X,N)-> find(T,X,N).

%%pack(L)-> pack(L,[]).
%%pack([H|T],N)->
%%	case next:member(H, T) of
%%		true->pack(T,[[H]]);.
		

%% ====================================================================
%% Internal functions
%% ====================================================================


