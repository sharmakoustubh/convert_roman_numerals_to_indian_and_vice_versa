-module(roman).
-export([to_roman/1, convert/2, get_value/1]).
-compile(export_all).

to_roman(Number)->
    convert(Number,[]).

convert(0,Res)->
    Res;
convert(Number, Res)->
    case Number of
	N  when N >= 1000  ->
	    New_N = N - 1000,
	    New_Res = Res ++ "M",
	    convert(New_N, New_Res);

	N  when N >= 900  ->
	    New_N = N - 900,
	    New_Res = Res ++ "CM",
	    convert(New_N, New_Res);

	N  when N >= 500  ->
	    New_N = N - 500,
	    New_Res = Res ++ "D",
	    convert(New_N, New_Res);

	N  when N >= 400  ->
	    New_N = N - 400,
	    New_Res = Res ++ "CD",
	    convert(New_N, New_Res);

	N  when N >= 100  ->
	    New_N = N - 100,
	    New_Res = Res ++ "C",
	    convert(New_N, New_Res);

	N  when N >= 90  ->
	    New_N = N - 90,
	    New_Res = Res ++ "XC",
	    convert(New_N, New_Res);

	N  when N >= 50  ->
	    New_N = N - 50,
	    New_Res = Res ++ "L",
	    convert(New_N, New_Res);

	N  when N >= 40  ->
	    New_N = N - 40,
	    New_Res = Res ++ "XL",
	    convert(New_N, New_Res);
	
	N  when N >= 10  ->
	    New_N = N - 10,
	    New_Res = Res ++ "X",
	    convert(New_N, New_Res);

	N when N == 9  ->
	    New_N = N - 9,
	    New_Res = Res ++ "IX",
	    convert(New_N, New_Res);

	N  when N >= 5  ->
	    New_N = N - 5,
	    New_Res = Res ++ "V",
	    convert(New_N, New_Res);

	N when N == 4  ->
	    New_N = N - 4,
	    New_Res = Res ++ "IV",
	    convert(New_N, New_Res);

	N ->
	    New_N = N - 1,
	    New_Res = Res ++ "I",
	    convert(New_N, New_Res)
	end.

to_indian(Roman_number)->
    to_indian(Roman_number,0).

to_indian([],Result) ->
    Result;
to_indian([H1,H2|T],Result) ->
    First_Val = get_value(H1),
    Second_Val = get_value(H2),
    case First_Val >= Second_Val of
	true ->
	    to_indian([H2|T], Result + First_Val);
	false ->
	    to_indian([H2|T], Result - First_Val)
    end;
to_indian([H],Result) ->
    to_indian([], Result + get_value(H)).


get_value(Number)->
    case Number of
	$M ->
	    1000;
	$D ->
	    100;
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
