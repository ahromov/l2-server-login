#!/bin/sh

pidfile=$1
user=$2

<<<<<<< HEAD
[ -f log/stdout.log ] && /usr/bin/gzip log/stdout.log && mv log/stdout.log.gz "log/`date +%Y-%m-%d_%H-%M-%S`_stdout.log.gz" 
#/usr/local/openjdk11/bin/java -Xms128m -Xmx256m -jar l2jlogin.jar > log/stdout.log &
/usr/sbin/daemon -f -u ${user} -o /home/andrew/l2jlogin/log/stdout.log /usr/local/openjdk14/bin/java -Xms128m -Xmx256m -jar l2jlogin.jar > log/stdout.log &
let pid=$!+1


echo ${pid} > ${pidfile}

=======
[ -f log/stdout.log ] && /usr/bin/gzip log/stdout.log && mv log/stdout.log.gz "log/`date +%Y-%m-%d_%H-%M-%S`_stdout.log.gz"
#/usr/local/openjdk11/bin/java -Xms512m -Xmx4g -jar l2jserver.jar > log/stdout.log &
/usr/sbin/daemon -f -u ${user} -o /home/andrew/l2j-server-login/log/stdout.log /usr/local/openjdk14/bin/java -Xms512m -Xmx2g -jar l2jlogin.jar > log/stdout.log &
let pid=$!+1

echo ${pid} > ${pidfile}
>>>>>>> branch 'master' of https://github.com/ahromov/l2-server-login.git
