-module(test).
-export([start/1, lol/1, list/0, sort/1, even/1]).

start(20)->
    io:format("Nu är jag klar");
start(X)->
    io:format("~nHello world ~p", [X]), 
    start(X+1).


lol(0)->
    io:format("tjoooooooooooooooooo");
lol(Variabel) ->
    io:format("hejhej.~n"),
    lol(Variabel-1).

list()->
    [1,2,3,4,5,6].

sort([H|T])->
    io:format("~n ~p", [H]),
    sort(T);
sort([]) ->
    io:format("~ni'm done!").

%reverse([H|T])->
%    reverse(T|[H]);
%reverse([])->
%    io:format("done!").

even([H|T]) when H rem 2 == 0->
    [H|even(T)];
even([H|T]) when H rem 2 == 1->
    even(T);
even([])->
    [].
