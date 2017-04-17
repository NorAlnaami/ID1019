%% @author norash1995
%% @doc @todo Add description to repeat.


-module(repeat).

%% ====================================================================
%% API functions
%% ====================================================================
-export([reverse/1,duplicate/1,member/2,unique/1,uni/1]).

reverse(L)-> reverse(L,[]).
reverse([],L)->L;
reverse([H|T],L)-> reverse(T,[H|L]).

duplicate([])->[];
duplicate([H|T])-> [H,H|duplicate(T)].

member(_,[])->false;
member(H,[H|_])->
	true;
member(X,[_|T])->
	member(X,T).

%%[1,2,3,1,2]
unique(L)-> unique(L,[]).
unique([],L)-> L;
unique([H|T],L)->
	case repeat:member(H, T) of
		true-> unique(T,L);
		false-> unique(T,[H|L])
	end.

uni([])->[];
uni([H|T])->
	case repeat:member(H, T) of
		true->uni(T);
		false-> [H|uni(T)]
	end.


%% ====================================================================
%% Internal functions
%% ====================================================================


