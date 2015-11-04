use 5.010;
use strict;
use warnings;
use Data::Dumper qw(Dumper);

my @myarray=(1,2,3,4);
my $count=0;
foreach my $element (@myarray) {
  $count++;
}

if ($count != scalar @myarray) {
  print "error: Can't loop through the array\n";
  exit 1;
}

my %names = (
  "john"=>"male",
  "jessica"=>"female",
  "dominique"=>"female",
  "pat"=>"male",
);

foreach my $k (keys %names) {
  if ($names{$k} eq 'male') {
    delete $names{$k}; 
  }
}

if (scalar(keys %names) == 2) {
  print "Works!\n"
}
else {
  print "error: The hash has an incorrect amount of results\n";
  exit 1;
}

my %emails = (
  "john"=>"john\@email.com",
  "jesica"=>"jesica\@email.com",
  "dominique"=>"dominique\@email.com",
  "pat"=>"pat\@email.com",
);

foreach my $name (keys %names) {
$names{$name} = $emails{$name};
}
#print Dumper \%names;

if ($names{"dominique"} ne $emails{"dominique"}) {
  print "3) error: The email for dominique does not match\n";
  exit 1;
}
print "3) Works!\n"