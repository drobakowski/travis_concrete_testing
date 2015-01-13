-module(travis_concrete_testing_tests).

-include_lib("eunit/include/eunit.hrl").

travis_concrete_testing_test_() ->
    {setup,
     fun() ->
             ok
     end,
     fun(_) ->
             ok
     end,
     [
      {"travis_concrete_testing is alive",
       fun() ->
               %% format is always: expected, actual
               ?assertEqual(howdy, travis_concrete_testing:hello())
       end}
      ]}.
