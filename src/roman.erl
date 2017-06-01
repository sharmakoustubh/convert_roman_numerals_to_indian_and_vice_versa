-module(roman).
-export([to_roman/1, to_indian/1, subtract_number_and_add_roman_letter/4]).

-ifdef(TEST).
-compile(export_all).
-endif.

to_roman(Number)->
    convert(Number,[]).

convert(0,Res)->
    Res;
convert(Number, Res)->
    case Number of
	N  when N >= 1000  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 1000, Res, "M");
	
	N  when N >= 900  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 900, Res, "CM");
	
	N  when N >= 500  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 500, Res, "D");
	
	N  when N >= 400  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 400, Res, "CD");
	
	N  when N >= 100  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 100, Res, "C");
	
	N  when N >= 90  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 90, Res, "XC");
	
	N  when N >= 50  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 50, Res, "L");
	
	N  when N >= 40  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 40, Res, "XL");
	
	N  when N >= 10  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 10, Res, "X");
	
	N when N == 9  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 9, Res, "IX");
	
	N  when N >= 5  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 5, Res, "V");
	
	N when N == 4  ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 4, Res, "IV");
	
	N ->
	    {New_N, New_Res} = subtract_number_and_add_roman_letter(N, 1, Res, "I")
	end,
    convert(New_N, New_Res).

subtract_number_and_add_roman_letter(Indian_num, Substract, Roman_num, Add) ->
    Num = Indian_num - Substract,
    List = Roman_num ++ Add,
    {Num, List}.

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
