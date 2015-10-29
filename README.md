# Perl Challenge
### commands.pl
commands.pl is a multi-threaded perl daemon that newline parses a text file and
interprets each line as a command and instructions. Line 1 is always the command
the remaining lines are the relevant instructions. commands.pl must support the
following commands:

- shutdown

**shutdown**

The first line of the text will be the string 'shutdown' (the command) followed by N more lines where
N should match the number of running threads.  command.pl by default runs 5 threads, so
in that case N=5.  Each of lines following the 'shutdown' command will contain an integer.
That integer represents the id of the thread. When command.pl receives a shutdown instruction
the program should shutdown each thread in the order indicated by the instructions.

Example Input
```
shutdown
4
2
3
1
5
```

If the above input is received, then thread 4 should shut down first and then thread 2 and so forth until thread 5 is the last one to shutdown. The thread should print to stdout the statement: "Thread $id shutting down\n".  So the example output should look something like:

```
press ctrl+c to stop the script
Thread 4 shutting down
Thread 2 shutting down
Thread 3 shutting down
Thread 1 shutting down
Thread 5 shutting down
...exiting
```
