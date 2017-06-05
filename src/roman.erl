-module(roman).
-export([to_roman/1, to_indian/1, get_largest_unit/1, get_roman_numeral/1]).

-ifdef(TEST).
-compile(export_all).
-endif.

to_roman(Number)->
    convert(Number,[]).

convert(0,Res)->
    Res;
convert(Number, Res)->
    U = get_largest_unit(Number),
    Roman_number = get_roman_numeral(U),
    convert(Number - U, Res ++ Roman_number).

get_largest_unit(Number) ->
    case Number of
	N when N >= 1000 ->
	    1000;
	N when N >= 900  ->
	    900;
	N when N >= 500 ->
	    500;
	N when N >= 400  ->
	    400;
	N when N >= 100 ->
	    100;
	N when N >= 90  ->
	    90;
	N when N >= 50 ->
	    50;
	N when N >= 40  ->
	    40;
	N when N >= 10 ->
	    10;
	N when N >= 9  ->
	    9;
	N when N >= 5 ->
	    5;
	N when N >= 4  ->
	    4;
	_ ->
	    1
	end.

get_roman_numeral(Number) ->
    List = [{1000, "M"},{900, "CM"},{500, "D"},{400, "CD"},{100, "C"},{90, "XC"},{50, "L"},{40, "XL"},{10, "X"},{9, "IX"},{5, "V"},{4, "IV"},{1, "I"}],
    Res = proplists:get_value(Number, List),
    io:format("~p~n",[Res]),
    Res.

to_indian(Roman_number)->
    to_indian(Roman_number,0).

to_indian([],Result) ->
    Result;

to_indian([H],Result) ->
    to_indian([], Result + get_value(H));

to_indian([H1,H2|T],Result) ->
    First_Val = get_value(H1),
    Second_Val = get_value(H2),
    case First_Val >= Second_Val of
	true ->
	    to_indian([H2|T], Result + First_Val);
	false ->
	    to_indian([H2|T], Result - First_Val)
    end.

get_value(Number)->
    case Number of
	$M ->
	    1000;
	$D ->
	    500;
	$C ->
	    100;
	$L ->
            50;
	$X ->
            10;
     	$V ->
            5;
       $I ->
            1
    end.
