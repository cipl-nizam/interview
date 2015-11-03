#!/usr/bin/env perl
use strict;
use warnings;
use threads;

my $filename = "./commands.input.txt"; 
my $max_threads=5;
my @threads=();
my @lines=();
my $md5="";
my  $i=1;


# Subroutine to shutdown the threads before exiting
sub onexit {
  open(INFO, $filename) or die("Could not open  file.");
   chomp(@lines = <INFO>);
  if (scalar @threads > 0) {
    
    foreach my $thread (@threads) {
      $thread->kill('KILL');
      $thread->join();
	  print "Thread  $lines[$i] shutting down\n";
	  $i++;
    }
  }
  print "...exiting\n";
  exit 0;
}

# Catch ctrl+c
$SIG{KILL}=$SIG{INT} = \&onexit;

# Subroutine to detect file change
sub file_changed {
  my $new_md5 = `md5sum $filename`;
  chomp($new_md5);
  my $change=0;
  if ($md5 ne $new_md5) {
    $change=1;
  }
  $md5=$new_md5;
  return $change;
}

#
# MAIN
#
# This program reads a text file, does a newline parsing, and interprets
# the first line as a 'command' and all other lines as 'instructions'
# Line 1 is always the command
# Lines 2..N are the instructions
# See the README for how to process the specific instructions
#
if ( -f $filename ) {
  # Spin up some threads
  for (my $i=1; $i<=$max_threads; $i++) {
    push @threads, async {
      $SIG{'KILL'} = sub {
      };
        threads->exit();
      my $x = int(rand($max_threads));
      while(1) {
        sleep 1;
      }
    };
  }
  print "press ctrl+c to stop the script\n";
  while(1) {
    sleep 1;
  }
}
else {
  print "$filename does not exist or is not accessible\n";
}
