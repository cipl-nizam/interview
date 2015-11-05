#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests=>13;

#Check if Football package exists
use_ok('Football');

#Check conditions in the valid_team Function
is(Football::valid_team('',''), 0, "Invalid Team - Empty");
is(Football::valid_team('','Rockers'), 0, "Invalid Team - Rockers");
is(Football::valid_team('','Ravens'), 1, "Valid Team - Ravens");

#Check conditions in the valid_location Sub routine
is(Football::valid_location('',''), 0, "Invalid Location - Empty");
is(Football::valid_location('','Texas'), 0, "Invalid Location - Texas");
is(Football::valid_location('','New York'), 1, "Valid Location - New York");

#Check conditions in the get_teams_at_location Sub routine
is(Football::get_teams_at_location('','Texas'), '', "Invalid Location");
isnt(Football::get_teams_at_location('','New York'), "", "Team exists");

#Check conditions in the get_team_location Sub routine
is(Football::get_team_location('','Rockers'), '', "Invalid Team");
isnt(Football::get_team_location('','Ravens'), "", "Location Found");

#Check conditions in the get_the_best_team Sub routine
is(Football::get_the_best_team('Ravens'), "Seattle Seahawks", "Ravens is not the best team");
is(Football::get_the_best_team('Seattle Seahawks'), "Seattle Seahawks", "Seattle Seahawks is the best team");