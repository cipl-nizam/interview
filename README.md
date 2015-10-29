# Perl Challenge

There are 3 perl challenges.  One requires that you modify commands.pl to read
instructions from a text file, another requires that you remove the bugs from an
existing perl script (debug.pl) and the final challenge requires you to write
your own test script against a perl module (Football.pm).

### How to submit your work

You must fork this repo into your personal github account. You will then commit
your solutions to your repo.  Once completed, let your contact know that your
solution has been pushed.

### Challenges

#### commands.pl - Demonstrate your algorithm skills
commands.pl is a multi-threaded perl daemon that newline parses a text file and
interprets the lines as a command and set of instructions. Line 1 is always the command.
The remaining lines are the relevant instructions. commands.pl must support the following
commands:

- shutdown

The first line of the text will be the string 'shutdown' (the command) followed by
N more lines where N should match the number of running threads.  command.pl by default
runs 5 threads, so in that case N=5.  Each of lines following the 'shutdown' command
will contain an integer. That integer represents the id of the thread. When command.pl
receives a shutdown command the program should shutdown each thread in the order
indicated by the instructions.

Example Input
```
shutdown
4
2
3
1
5
```

If the above input is received, then thread 4 should shut down first and then thread 2
and so forth until thread 5 is the last one to shutdown. Each thread should print to
stdout the statement: "Thread $id shutting down\n".  So the example output should look
something like:

```
press ctrl+c to stop the script
Thread 4 shutting down
Thread 2 shutting down
Thread 3 shutting down
Thread 1 shutting down
Thread 5 shutting down
...exiting
```

Feel free to make any changes necessary to commands.pl that you need to accomplish the task.

### debug.pl - Demonstrate your understanding of perl

debug.pl is, as the name implies, a buggy script.  Correct all the bugs in the script so
that it runs without error.

### Football.pm - Demonstrate your code testing

Write your own set of unit tests for the module Football.pm.  You must produce a test for
every return path for every method. For example `sub valid_team` has 3 return paths, so you
are expected to provide 3 tests for that method. You are encouraged to use the perl unit
testing module Test::More. Your test script should load the module from the current working
directory.
