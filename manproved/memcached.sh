memcached -d -s ~/memcached.sock
echo "set key 0 900 2\r\n10\r\n" | nc -U ~/memcached.sock
echo "get key" | nc -U ~/memcached.sock
