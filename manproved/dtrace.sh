# PostgreSQL

# PostgreSQL: query trace by query string:
dtrace -n 'postgresql*:::query-start { trace(copyinstr(arg0)) }'
# PostgreSQL: query count summary by query string:
dtrace -n 'postgresql*:::query-start { @[copyinstr(arg0)] = count(); }'
# PostgreSQL server: count queries:
dtrace -n 'pid$target::exec_simple_query:entry { @[copyinstr(arg0)] = count(); }' -p PID

# I/O
sudo iosnoop -p 790
