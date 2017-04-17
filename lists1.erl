%% @author norash1995
%% @doc @todo Add description to lists1.


-module(lists1).

%% ====================================================================
%% API functions
%% ====================================================================
-compile(export_all).

nth(0,[H|_])->H;
nth(N,[_|T])-> nth(N-1,T).


number1([_|T])-> 1+number1(T);
number1([])->0.

sum(L)-> sum(0,L).
sum(N,[H|T])-> sum(N+H,T);
sum(N,[])->N.


sum1([])-> 0;
sum1([H|T])-> H+sum(T).

%%number(L)-> number(0,L).
%%number(N,[_|T])-> number(N+1, T);
%%number(N,[])->N.
%% ====================================================================
%% Internal functions
%% ====================================================================


