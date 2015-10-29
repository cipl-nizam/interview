#!/usr/bin/env perl
package Football;
use strict;
use warnings;
use Data::Dumper;

use constant TEAMSBYLOCATION => {
  "Arizona"=>["Cardinals"],
  "Atlanta"=>["Falcons"],
  "Baltimore"=>["Ravens"],
  "Buffalo"=>["Bills"],
  "Carolina"=>["Panthers"],
  "Chicago"=>["Bears"],
  "Cincinnati"=>["Bengals"],
  "Cleveland"=>["Browns"],
  "Dallas"=>["Cowboys"],
  "Denver"=>["Broncos"],
  "Detroit"=>["Lions"],
  "Green Bay"=>["Packers"],
  "Houston"=>["Texans"],
  "Indianapolis"=>["Colts"],
  "Jacksonville"=>["Jaguars"],
  "Kansas City"=>["Chiefs"],
  "Miami"=>["Dolphins"],
  "Minnesota"=>["Vikings"],
  "New England"=>["Patriots"],
  "New Orleans"=>["Saints"],
  "New York"=>["Giants","Jets"],
  "Oakland"=>["Raiders"],
  "Philadelphia"=>["Eagles"],
  "Pittsburgh"=>["Steelers"],
  "San Diego"=>["Chargers"],
  "San Francisco"=>["49ers"],
  "Seattle"=>["Seahawks"],
  "St. Louis"=>["Rams"],
  "Tampa Bay"=>["Buccaneers"],
  "Tennessee"=>["Titans"],
  "Washington"=>["Redskins"]
};

use constant TEAMSBYNAME => {
  "49ers" => "San Francisco",
  "Bears" => "Chicago",
  "Bengals" => "Cincinnati",
  "Bills" => "Buffalo",
  "Broncos" => "Denver",
  "Browns" => "Cleveland",
  "Buccaneers" => "Tampa Bay",
  "Cardinals" => "Arizona",
  "Chargers" => "San Diego",
  "Chiefs" => "Kansas City",
  "Colts" => "Indianapolis",
  "Cowboys" => "Dallas",
  "Dolphins" => "Miami",
  "Eagles" => "Philadelphia",
  "Falcons" => "Atlanta",
  "Jaguars" => "Jacksonville",
  "Jets" => "New York",
  "Lions" => "Detroit",
  "Packers" => "Green Bay",
  "Panthers" => "Carolina",
  "Patriots" => "New England",
  "Raiders" => "Oakland",
  "Rams" => "St. Louis",
  "Ravens" => "Baltimore",
  "Redskins" => "Washington",
  "Saints" => "New Orleans",
  "Seahawks" => "Seattle",
  "Steelers" => "Pittsburgh",
  "Texans" => "Houston",
  "Titans" => "Tennessee",
  "Vikings" => "Minnesota"
};

sub valid_team {
  my $self = shift;
  my $team = shift;
  if (! defined $team) {
    return 0;
  }
  if (! defined TEAMSBYNAME->{$team}) {
    return 0;
  }
  return 1;
}

sub valid_location {
  my $self = shift;
  my $location = shift;
  if (! defined $location) {
    return 0;
  }
  if (! defined TEAMSBYLOCATION->{$location}) {
    return 0;
  }
  return 1;
}

sub get_teams_at_location {
  my $self = shift;
  my $location = shift;
  if (!$self->valid_location($location)) {
    return [];
  }
  return TEAMSBYLOCATION->{$location};
}

sub get_team_location {
  my $self = shift;
  my $team = shift;
  if (!$self->valid_team($team)) {
    return "";
  }
  return TEAMSBYNAME->{$team};
}

sub get_the_best_team {
  my $self = shift;
  return "Seattle Seahawks";
}

1;
