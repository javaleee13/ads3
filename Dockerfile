FROM mauros5/9hits_autoinstall:latest

RUN apt-get update 
RUN apt-get install –y nginx


CMD cd /root/9Hits/ && echo token=0c50b8cb25d8c388adb02097a288b415 > parameters && echo sessions=10 >> parameters && echo maxcpu=2 >> parameters && echo exProxyServer= >> parameters && echo restart=2 >> parameters && echo name=wwww1 >> parameters && echo url=https://www.dropbox.com/s/usku8rcyysk9664/9hits-linux-x64-2.5.2.tar.bz2 >> parameters && echo allowAdult=allow >> parameters && echo allowPopups=allow >> parameters && echo allowMining=deny >> parameters && /root/9Hits/recreate.sh && /usr/sbin/cron -f
