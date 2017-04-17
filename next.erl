%% @author norash1995
%% @doc @todo Add description to next.


-module(next).

%% ====================================================================
%% API functions
%% ====================================================================
-export([duplicate/1, number/1, sum/1, member/2, unique/1, reverse1/1]).

duplicate([])->[];
duplicate([H|T])->[H,H|duplicate(T)].

number(L)-> number(0,L).
number(N,[_|T])-> number(N+1, T);
number(N,[])->N.

sum(L)-> sum(0,L).
sum(N,[H|T])-> sum(N+H,T);
sum(N,[])->N.

member(N,[])->
	false;
member(H,[H|T])->
	true;
member(N,[_|T])->
	member(N,T).

unique([])->[];
unique([H|T])->
	case next:member(H, T) of
		true-> unique(T);
		false-> [H|unique(T)]
	end.
		
reverse1([])->[];
reverse1([H|T])->[reverse1(T)|H].

%% ====================================================================
%% Internal functions
%% ====================================================================


