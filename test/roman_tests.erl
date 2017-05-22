-module(roman_tests).
-include_lib("eunit/include/eunit.hrl").

convert_number_one_to_roman_test()->
    Res = roman:convert(1),
    ?assertEqual("I",Res).

convert_number_two_to_roman_test()->
    Res = roman:convert(2),
    ?assertEqual("II",Res).

convert_number_three_to_roman_test()->
    Res = roman:convert(3),
    ?assertEqual("III",Res).

convert_number_four_to_roman_test()->
    Res = roman:convert(4),
    ?assertEqual("IV",Res).

convert_number_five_to_roman_test()->
    Res = roman:convert(5),
    ?assertEqual("V",Res).

convert_number_six_to_roman_test()->
    Res = roman:convert(6),
    ?assertEqual("VI",Res).

convert_number_seven_to_roman_test()->
    Res = roman:convert(7),
    ?assertEqual("VII",Res).

convert_number_eight_to_roman_test()->
    Res = roman:convert(8),
    ?assertEqual("VIII",Res).

convert_number_nine_to_roman_test()->
    Res = roman:convert(9),
    ?assertEqual("IX",Res).

convert_number_ten_to_roman_test()->
    Res = roman:convert(10),
    ?assertEqual("X",Res).

convert_number_eleven_to_roman_test()->
    Res = roman:convert(11),
    ?assertEqual("XI",Res).

convert_number_twelve_to_roman_test()->
    Res = roman:convert(12),
    ?assertEqual("XII",Res).

convert_number_thirteen_to_roman_test()->
    Res = roman:convert(13),
    ?assertEqual("XIII",Res).

convert_number_fourteen_to_roman_test()->
    Res = roman:convert(14),
    ?assertEqual("XIV",Res).

convert_number_fifteen_to_roman_test()->
    Res = roman:convert(15),
    ?assertEqual("XV",Res).

convert_number_sixteen_to_roman_test()->
    Res = roman:convert(16),
    ?assertEqual("XVI",Res).

convert_number_seventeen_to_roman_test()->
    Res = roman:convert(17),
    ?assertEqual("XVII",Res).

convert_number_eighteen_to_roman_test()->
    Res = roman:convert(18),
    ?assertEqual("XVIII",Res).

convert_number_nineteen_to_roman_test()->
    Res = roman:convert(19),
    ?assertEqual("XIX",Res).

convert_number_twenty_to_roman_test()->
    Res = roman:convert(20),
    ?assertEqual("XX",Res).

convert_number_twentyone_to_roman_test()->
    Res = roman:convert(21),
    ?assertEqual("XXI",Res).

convert_number_twentytwo_to_roman_test()->
    Res = roman:convert(22),
    ?assertEqual("XXII",Res).

convert_number_twentythree_to_roman_test()->
    Res = roman:convert(23),
    ?assertEqual("XXIII",Res).

convert_number_twentyfour_to_roman_test()->
    Res = roman:convert(24),
    ?assertEqual("XXIV",Res).

convert_number_twentyfive_to_roman_test()->
    Res = roman:convert(25),
    ?assertEqual("XXV",Res).

convert_number_twentysix_to_roman_test()->
    Res = roman:convert(26),
    ?assertEqual("XXVI",Res).

convert_number_twentyseven_to_roman_test()->
    Res = roman:convert(27),
    ?assertEqual("XXVII",Res).

convert_number_twentyeight_to_roman_test()->
    Res = roman:convert(28),
    ?assertEqual("XXVIII",Res).

convert_number_twentynine_to_roman_test()->
    Res = roman:convert(29),
    ?assertEqual("XXIX",Res).

convert_number_thirty_to_roman_test()->
    Res = roman:convert(30),
    ?assertEqual("XXX",Res).

convert_number_thirtyone_to_roman_test()->
    Res = roman:convert(31),
    ?assertEqual("XXXI",Res).

convert_number_thirtytwo_to_roman_test()->
    Res = roman:convert(32),
    ?assertEqual("XXXII",Res).

convert_number_thirtythree_to_roman_test()->
    Res = roman:convert(33),
    ?assertEqual("XXXIII",Res).

convert_number_thirtyseven_to_roman_test()->
    Res = roman:convert(37),
    ?assertEqual("XXXVII",Res).

convert_number_thirtyeight_to_roman_test()->
    Res = roman:convert(38),
    ?assertEqual("XXXVIII",Res).

convert_number_thirtynine_to_roman_test()->
    Res = roman:convert(39),
    ?assertEqual("XXXIX",Res).

convert_number_forty_to_roman_test()->
    Res = roman:convert(40),
    ?assertEqual("XL",Res).

convert_number_fortyone_to_roman_test()->
    Res = roman:convert(41),
    ?assertEqual("XLI",Res).

convert_number_fortythree_to_roman_test()->
    Res = roman:convert(43),
    ?assertEqual("XLIII",Res).

convert_number_fortyfive_to_roman_test()->
    Res = roman:convert(45),
    ?assertEqual("XLV",Res).

convert_number_fortyeight_to_roman_test()->
    Res = roman:convert(48),
    ?assertEqual("XLVIII",Res).

convert_number_fifty_to_roman_test()->
    Res = roman:convert(50),
    ?assertEqual("L",Res).
