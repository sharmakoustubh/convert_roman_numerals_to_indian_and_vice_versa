-module(roman).
-export([convert/1, convert/2]).
-compile(export_all).

convert(Number)->
    convert(Number,[]).

convert(0,Res)->
    Res;
convert(Number, Res)->
    case Number of
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
