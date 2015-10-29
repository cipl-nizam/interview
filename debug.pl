#!/usr/bin/env perl
use strict;
use warnings;

my $myarray=(1,2,3,4);
my $count=0;
foreach my $element ($myarray) {
  $count++;
}
if ($count != $#myarray) {
  print "error: Can't loop through the array\n";
  exit 1;
}

my %names = {
  "john"=>"male",
  "jessica"=>"female",
  "pat"=>"male",
};

foreach my $k (keys %names) {
  if (%names->{$k} == 'male') {
    delete %names->{$k};
  }
}

if ($#{keys %names} == 2) {
  print "Works!\n"
}
else {
  print "error: The hash has an incorrect amount of results\n";
}

my $emails = {
  "john"=>"john@email.com",
  "jesica"=>"jesica@email.com",
  "dominique"=>"dominique@email.com",
  "pat"=>"pat@email.com",
};

foreach my $name (keys %names) {
  %names->{$name} = {
    email=>$emails{$name}
    name=>$name
  };
}

if (%names->{'dominique'}{'email'} ne $email->{'dominique'}) {
  print "3) error: The email for dominique does not match\n";
}

print "3) Works!\n"
