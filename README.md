# Docker Container for PokerTH

This Repository contains a Dockerfile for PokerTH server (https://www.pokerth.net/)

To start your dedicated game server just enter the correct IP or server name using tag  

~~~
<InternetServerAddress value="" />
~~~~

in file

~~~
resources/config.xml
~~~

Then run

~~~~
docker build -t pokerth_server .
~~~~

to build the container and

~~~~
docker run -p 7234:7234 pokerth_server
~~~~

to run it.

You can now configure your PokerTH client to connect to the server. Have fun!