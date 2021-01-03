Last login: Thu Dec 31 07:43:56 on ttys001

The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
Jeffs-MBP:~ jeff$ ssh pi@rpiGarageOpener
pi@rpigarageopener's password: 
Linux rpiGarageOpener 5.4.72+ #1356 Thu Oct 22 13:56:00 BST 2020 armv6l

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
You have mail.
Last login: Thu Dec 31 20:37:20 2020 from 192.168.1.118
pi@rpiGarageOpener:~ $ ls
api                createDB.sh  garage.log      glenhollow.duckdns.org.p12  myID.txt             rest_server.log   tls2.sh
Bookshelf          dead.letter  genID.py        hello.py                    Pictures             rpi-echo.log      tls.sh
cacert.pem         Desktop      getAPI.sh       iphone.full.pfx             private-data.sh      rpi-echo.service  tmp.txt
ca-certs.sh        Documents    getScripts2.sh  junk                        Public               simple-fan.py     unused_rpi.sh
certs.sh           Downloads    getScripts.sh   junk2                       pushGarageRemote.py  simple-fan.py.1   Videos
check_apache.html  emailTry.py  getWebsite.sh   Music                       read.py              Templates
pi@rpiGarageOpener:~ $ ls junk
apache.sh  certs2.sh                   glenhollow.duckdns.org-full.pem  glenhollow.duckdns.org.p12  README.Debian
backup     glenhollow.duckdns.org.csr  glenhollow.duckdns.org.key       glenhollow.duckdns.org.pem
pi@rpiGarageOpener:~ $ nano private-data.sh
pi@rpiGarageOpener:~ $ cd junk
pi@rpiGarageOpener:~/junk $ nano certs2.sh


pi@rpiGarageOpener:~/junk $ nano private-data.sh
pi@rpiGarageOpener:~/junk $ nano ../private-data.sh
pi@rpiGarageOpener:~/junk $ ls
apache.sh  certs2.sh                   glenhollow.duckdns.org-full.pem  glenhollow.duckdns.org.p12  README.Debian
backup     glenhollow.duckdns.org.csr  glenhollow.duckdns.org.key       glenhollow.duckdns.org.pem
pi@rpiGarageOpener:~/junk $ nano apache.sh
pi@rpiGarageOpener:~/junk $ sudo bash apache.sh
+ echo '   Retsart apache'
   Retsart apache
+ echo

+ echo 'a2ensite default-ssl'
a2ensite default-ssl
+ a2ensite default-ssl
Site default-ssl already enabled
+ echo

+ echo 'a2dissite default'
a2dissite default
+ a2dissite default
ERROR: Site default does not exist!
+ echo

+ echo 'systemctl restart apache2'
systemctl restart apache2
+ systemctl restart apache2
+ echo

+ echo 'pache2ctl configtest'
pache2ctl configtest
+ apache2ctl configtest
Syntax OK
+ echo

+ echo 'systemctl reload apache2'
systemctl reload apache2
+ systemctl reload apache2
+ echo

+ echo 'service apache2 restart'
service apache2 restart
+ service apache2 restart
pi@rpiGarageOpener:~/junk $ nano apache.sh
pi@rpiGarageOpener:~/junk $ sudo bash apache.sh
# set -v -x

echo "   Retsart apache"
   Retsart apache
echo

a2ensite default-ssl
Site default-ssl already enabled
echo

a2dissite default
ERROR: Site default does not exist!
echo

systemctl restart apache2
echo

apache2ctl configtest
Syntax OK
echo

systemctl reload apache2
echo

service apache2 restart


pi@rpiGarageOpener:~/junk $ nano apache.sh
pi@rpiGarageOpener:~/junk $ sudo bash apache.sh
   Retsart apache

+ a2ensite default-ssl
Site default-ssl already enabled
+ set +x

+ a2dissite default
ERROR: Site default does not exist!
+ set +x

+ systemctl restart apache2
+ set +x

+ apache2ctl configtest
Syntax OK
+ set +x

+ systemctl reload apache2
+ set +x

+ service apache2 restart
pi@rpiGarageOpener:~/junk $ nano apache.sh
pi@rpiGarageOpener:~/junk $ sudo bash apache.sh
   Retsart apache

a2ensite default-ssl
Site default-ssl already enabled

set +v

a2dissite default
ERROR: Site default does not exist!

set +v

systemctl restart apache2

set +v

apache2ctl configtest
Syntax OK

set +v

systemctl reload apache2

set +v

service apache2 restart


pi@rpiGarageOpener:~/junk $ sudo bash apache.sh
   Retsart apache

a2ensite default-ssl

Site default-ssl already enabled

set +v

a2dissite default
ERROR: Site default does not exist!

set +v

systemctl restart apache2

set +v

apache2ctl configtest
Syntax OK

set +v

systemctl reload apache2

set +v

service apache2 restart


pi@rpiGarageOpener:~/junk $ 
pi@rpiGarageOpener:~/junk $ 
pi@rpiGarageOpener:~/junk $ 
pi@rpiGarageOpener:~/junk $ client_loop: send disconnect: Broken pipe
Jeffs-MBP:~ jeff$ ssh pi@rpiGarageOpener
pi@rpigarageopener's password: 
Linux rpiGarageOpener 5.4.72+ #1356 Thu Oct 22 13:56:00 BST 2020 armv6l

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
You have mail.
Last login: Fri Jan  1 06:44:57 2021 from 192.168.1.118
pi@rpiGarageOpener:~ $ cd junk
pi@rpiGarageOpener:~/junk $ history
    1  which php
    2  sudo apt install --dry-run php7.4
    3  sudo apt install  php7.3
    4  sudo apt install --dry-run php7.4-sqlite3
    5  sudo apt install --dry-run php7.3-sqlite3
    6  sudo apt install  php7.3 php7.3-sqlite3
    7  nano createDB.sh
    8  sudo bash createDB.sh
    9  nano createDB.sh
   10  sudo bash createDB.sh
   11  nano createDB.sh
   12  sudo bash createDB.sh
   13  nano createDB.sh
   14  sudo bash createDB.sh
   15  nano createDB.sh
   16  sudo bash createDB.sh
   17  nano createDB.sh
   18  sudo bash createDB.sh
   19  nano createDB.sh
   20  sudo bash createDB.sh
   21  nano createDB.sh
   22  sudo bash createDB.sh
   23  nano createDB.sh
   24  sqlite3 /var/www/db/garagedoor.db
   25  nano createDB.sh
   26  ls
   27  nano push_garage_opener.py
   28  mv push_garage_opener.py pushGarageRemote.py
   29  nano createDB.sh
   30  wget "https://raw.githubusercontent.com/dumbo25/garageDoorOpener2/main/garage.sh"
   31  ls -l
   32  ls /usr/local/bin
   33  chmod UG+x garage.sh
   34  chmod ug+x garage.sh
   35  ls -l
   36  mv garage.sh /usr/local/bin/garage.sh
   37  sudo mv garage.sh /usr/local/bin/garage.sh
   38  ls /usr/local/bin
   39  ls -l /usr/local/bin
   40  nano /var/www/db/garage.sh
   41  nano /usr/local/bin/garage.sh
   42  ls
   43  gpio read 17
   44  which which gpio
   45  /usr/bin/gpio read 17
   46  echo "close the garage door" | mail -s "Garage Door Open" 5127139980@txt.att.net
   47  sudo apt-get update -y
   48  sudo apt-get upgrade -y
   49  sudo nano /etc/ssmtp/ssmtp.conf
   50  sudo nano /etc/ssmtp/revaliases
   51  sudo chmod og+x /etc/ssmtp/ssmtp.conf
   52  nano emailTry.py
   53  python emailTry.py
   54  echo "close the garage door" | mail -s "Garage Door Open" 5127139980@txt.att.net
   55  sudo ufw show added
   56  sudo ufw allow 9080
   57  sudo ufw show added
   58  history | grep rest
   59  history | grep server
   60  python3 rest_server.py
   61  ls
   62  cd api
   63  ls
   64  python3 rest_server.py
   65  pwd
   66  python3 rest_server.py
   67  sudo python3 rest_server.py
   68  sudo python rest_server.py
   69  sudo python3 rest_server.py
   70  history |grep distro
   71  sudo pip3 install distro
   72  sudo python3 rest_server.py
   73  ls
   74  ls multi
   75  ls os
   76  nano rest_server.py
   77  ls
   78  nano rest_server.py
   79  sudo python3 rest_server.py -s
   80  sudo python3 rest_server.py 
   81  cat /etc/hosts
   82  sudo nano /etc/apache2/apache2.conf
   83  sudo nano /etc/apache2/conf-enabled/*.conf
   84  sudo nano /etc/apache2/sites-enabled/*.conf
   85  ls /usr/bin
   86  ls /usr/bin/rest_server.py
   87  ls -l /usr/bin/rest_server.py
   88  ps -aux | grep rest
   89  sudo nano /usr/bin/rest_server.py
   90  ls
   91  ls -l
   92  cat rest_server.log
   93  ls ../*.log
   94  sudo nano /usr/bin/rest_server.py
   95  pwd
   96  ls -l
   97  ps -aux | grep rest
   98  netstat -lptn
   99  netstat --tcp --listening --programs --numeric
  100  sudo ufw status
  101  sudo nano /usr/bin/rest_server.py
  102  cat /home/pi/api/server_cron.sh
  103  ls *.pid
  104  ls
  105  cat rest_server.log
  106  ls
  107  cd api
  108  httpd -t -c httpd.conf
  109  sudo httpd -t -c httpd.conf
  110  ls /etc/httpd
  111  which apache2
  112  ls /usr/sbin
  113  sudo nano /usr/bin/rest_server.py &
  114  curl -X GET http://localhost:9443/api/cpu
  115  sudo kill 8802
  116  sudo nano /etc/apache2/ports.conf
  117  sudo ufw status
  118  sudo ufw allow 9443
  119  sudo nano /usr/bin/rest_server.py
  120  sudo python3 /usr/bin/rest_server.py &
  121  ls
  122  cat rest_server.log
  123  sudo kill 9401
  124  ls -l
  125  ls -l cpu
  126  nano rest_server.py
  127  sudo python3 /usr/bin/rest_server.py 
  128  sudo python3 /usr/bin/rest_server.py -d
  129  sudo python3 /usr/bin/rest_server.py -h
  130  ls
  131  history | grep rest_server.py
  132  sudo nano /usr/bin/rest_server.py
  133  sudo nano rest_server.py
  134  sudo python3 rest_server.py -d
  135  netstat -l
  136  sudo python3 rest_server.py &
  137  netstat -l
  138  sudo kill 10805
  139  nc -zv localhost 8080
  140  nc -zv localhost 443
  141  nc -zv localhost 5070
  142  nc -z localhost 5070
  143  nc -zv localhost 5070
  144  nc -zv localhost 8888
  145  sudo python3 rest_server.py &
  146  nc -zv localhost 9443
  147  nc -zv rpiGarageOpener 9443
  148  sudo nano /etc/hosts
  149  history | grep nano | grep /
  150  sudo nano /etc/apache2/ports.conf
  151  sudo nano /etc/ssmtp/revaliases
  152  ls /etc
  153  sudoo nano /etc/host.conf
  154  sudo nano /etc/host.conf
  155  sudo nano /etc/host.allow
  156  sudo nano /etc/host.deny
  157  sudo nano /etc/networks
  158  sudo nano /etc/sysctl.conf
  159  ps -aux | grep rest_server
  160  sudo kill 8802
  161  sudo kill 8803
  162  sudo kill 12215
  163  sudo kill 12216
  164  ps -aux | grep rest_server
  165  sudo kill 8803
  166  sudo kill 8802
  167  ps -aux | grep rest_server
  168  sudo reboot
  169  nc -zv rpiGarageOpener 9443
  170  netstat -l
  171  sudo python3 rest_server.py &
  172  sudo kill 1280
  173  ps -aux | grep rest_server
  174  cd api
  175  sudo python3 rest_server.py &
  176  netstat -l
  177  nc -zv rpiGarageOpener 9443
  178  cat < /dev/null > /dev/tcp/rpiGarageOpener:9443; echo $?
  179  cat < /dev/null > /dev/tcp/rpiGarageOpener/9443; echo $?
  180  ps -aux | grep rest_server
  181  history
  182  ps -aux | grep rest_server
  183  sudo kill 1327
  184  ps -aux | grep rest_server
  185  python3 rest_server.py &
  186  ps -aux | grep rest_server
  187  sudo kill 1652
  188  python3 rest_server.py -p5070 &
  189  ps -aux | grep rest_server
  190  sudo kill 1698
  191  sudo python3 rest_server.py -p5070 &
  192  sudo kill 1763
  193  sudo netstat -anp | grep ':80 '
  194  sudo netstat -anp | grep ':9443 '
  195  sudo python3 rest_server.py &
  196  sudo netstat -anp | grep ':9443 '
  197  hotsname -L
  198  hotsname -I
  199  hostname -I
  200  sudo netstat -tnlp | grep :9443
  201  sudo tcpdump -n icmp
  202  sudo service ssh status
  203  netstat -an | grep "LISTEN "
  204  sudo nano /etc/hosts
  205  sudo netstat -tnlp | grep :5070
  206  ps -aux 
  207  ps -aux | grep 5070
  208  ps -aux | grep python
  209  sudo nano /usr/local/bin/rpi-echo.py
  210  sudo netstat -tnlp | grep :5070
  211  sudo nano /usr/local/bin/rpi-echo.py
  212  ps -aux | grep rest_server
  213  sudo kill 1898
  214  ps -aux | grep rest_server
  215  nano rest_server.py
  216  python3 rest_server.py
  217  python3 rest_server.py -d
  218  nano rest_server.py
  219  python3 rest_server.py -d
  220  nano rest_server.py
  221  python3 rest_server.py -d
  222  nano rest_server.py
  223  python3 rest_server.py -d
  224  ls /cat
  225  ls /etc
  226  ls /etc/.hosts
  227  cat /etc/hosts
  228  sudo nano /etc/hosts
  229  sudo reboot
  230  cd api
  231  ls
  232  ls cpu/
  233  cat cpu/get.backup
  234  rm cpu/get.backup
  235  rm state/get.backup
  236  ls state/
  237  rm state/get.backup.sh
  238  ls -l
  239  ls disk/
  240  rm disk/get.backup
  241  rm disk/memory.backup
  242  rm memory/get.backup
  243  rm navigation/get.backup
  244  ls navigation
  245  rm navigation/junk.json
  246  ls -l
  247  rm open/get.backup
  248  rm open/get.backup.sh
  249  rm os/get.backup
  250  rm reboot/get.backup
  251  rm server/get.backup
  252  rm state/get.backup
  253  rm state/get.backup.sh
  254  ls server/
  255  rmdir server
  256  ls
  257  ls -l
  258  ls state/
  259  ls test/
  260  rmdir test
  261  ls time/
  262  rm time/get.backup
  263  ls -l
  264  rm toggle/get.backup
  265  rm toggle/get.backup.sh
  266  rm uptime/get.backup
  267  ls
  268  ls -l
  269  rm get.backup
  270  ls
  271  ls -l
  272  ls
  273  cd navigation
  274  nano get.py
  275  history | grep server
  276  python3 rest_server.py -d
  277  cd..
  278  cd ..
  279  python3 rest_server.py -d
  280  cd api
  281  ls
  282  cd navigration
  283  cd navigation
  284  nano get.py
  285  ls
  286  ls /usr/local/bin
  287  sudo nano /usr/local/bin/fauxmo.py
  288  sudo nano /usr/local/bin/rpi-echo.py
  289  sudo ufw status
  290  history | grep ufw
  291  sudo ufw default deny incoming
  292  sudo ufw status
  293  sudo ufw default allow outgoing
  294  sudo ufw status
  295  sudo ufw allow ssh
  296  sudo ufw status
  297  ifconfig
  298  sudo ufw allow from 192.168.1.0/24
  299  sudo ufw status
  300  sudo ufw deny from 192.168.0.0/24
  301  ls
  302  sudo ufw status
  303  sudo ufw allow from 192.168.1.0/24 to 22/tcp
  304  sudo ufw status
  305  sudo ufw status numbered
  306  sudo ufw deny 80/tcp
  307  sudo ufw status numbered
  308  sudo ufw delete 4
  309  sudo ufw status numbered
  310  sudo ufw delete 8
  311  sudo ufw status numbered
  312  sudo ufw delete 9
  313  sudo ufw status numbered
  314  sudo ufw delete 8
  315  sudo ufw status numbered
  316  sudo ufw allow 1900/udp
  317  sudo ufw status numbered
  318  sudo ufw delete 11
  319  sudo ufw allow 1900/udp
  320  sudo ufw status numbered
  321  sudo ufw delete 11
  322  sudo ufw allow 5070
  323  sudo ufw allow 5071
  324  sudo ufw status numbered
  325  logout
  326  echo 1000 > serial
  327  ls
  328  cats erial
  329  cat serial
  330  rm serial
  331  ls certs2
  332  cd ca-certs
  333  ls
  334  ls /etc/ssl
  335  sudo ls -l /etc/ssl
  336  nano ca-certs.sh
  337  sudo ls -l /etc/ssl
  338  sudo bash ca-certs.sh
  339  sudo ls -l /etc/ssl
  340  sudo rm /etc/ssl/openssl.cnf.backup
  341  ls
  342  sudo ls -l /etc/ssl/certs
  343  sudo ls -l /etc/ssl/certs/ca*.*
  344  nano ca-certs.sh
  345  sudo bash ca-certs.sh
  346  ls /etc/ssl
  347  ls /etc/ssl/certs
  348  ls /etc/ssl/certs/ca*
  349  ls /etc/ssl/private/ca*
  350  sudols /etc/ssl/private/ca*
  351  sudo ls /etc/ssl/private/ca*
  352  sudo ls /etc/ssl/private/
  353  sudo ls /etc/ssl/private/ca*.*
  354  sudo ls /etc/ssl/private/ca-*.*
  355  sudo ls /etc/ssl/private/ca*
  356  sudo ls "/etc/ssl/private/ca-*.*"
  357  sudo ls /etc/ssl/private/ca
  358  sudo ls /etc/ssl/private/
  359  ls
  360  nano ca-certs.sh
  361  openssl version -d
  362  nano ca-certs.sh
  363  openssl x509 -noout -text -in /home/pi/ca-certs/certs/ca-cert.pem
  364  cd ca-certs
  365  openssl x509 -noout -text -in ca-cert.pem
  366  ls
  367  openssl x509 -noout -text -in cacert.pem
  368  nano ca-certs.sh
  369  cd ca-certs
  370  ls
  371  mv ca-cert_check.py ca-expiry.py
  372  ls
  373  ls *.py
  374  mv ca-cert-check.py ca-expiry.py
  375  nano ca-expiry.py
  376  python ca-expiry.py
  377  nano ca-expiry.py
  378  python ca-expiry.py
  379  nano ca-expiry.py
  380  sudo crontab -e
  381  nano ca-expiry.py
  382  python ca-expiry.py
  383  nano ca-expiry.py
  384  python ca-expiry.py
  385  ls
  386  cat tmp.txt
  387  python ca-expiry.py
  388  nano ca-expiry.py
  389  ls certs
  390  nano ca-expiry.py
  391  python ca-expiry.py
  392  rm tmp.txt
  393  python ca-expiry.py
  394  nano ca-expiry.py
  395  python ca-expiry.py
  396  which openssl
  397  nano ca-expiry.py
  398  python ca-expiry.py
  399  nano ca-expiry.py
  400  python ca-expiry.py
  401  nano ca-expiry.py
  402  python ca-expiry.py
  403  python3 ca-expiry.py
  404  nano ca-expiry.py
  405  python3 ca-expiry.py
  406  nano ca-expiry.py
  407  python3 ca-expiry.py
  408  nano ca-expiry.py
  409  python3 ca-expiry.py
  410  nano ca-expiry.py
  411  python3 ca-expiry.py
  412  nano ca-expiry.py
  413  python3 ca-expiry.py
  414  nano ca-expiry.pycat tmp.txt
  415  cat tmp.txt
  416  python3 ca-expiry.py
  417  nano ca-expiry.py
  418  python3 ca-expiry.py
  419  cat tmp.txt
  420  python3 ca-expiry.py
  421  nano ca-expiry.py
  422  python3 ca-expiry.py
  423  nano ca-expiry.py
  424  python3 ca-expiry.py
  425  nano ca-expiry.py
  426  python3 ca-expiry.py
  427  nano ca-expiry.py
  428  python3 ca-expiry.py
  429  nano ca-expiry.py
  430  cat tmp.txt
  431  nano ca-expiry.py
  432  python3 ca-expiry.py
  433  nano ca-expiry.py
  434  python3 ca-expiry.py
  435  nano ca-expiry.py
  436  python3 ca-expiry.py
  437  nano ca-expiry.py
  438  python3 ca-expiry.py
  439  nano ca-expiry.py
  440  python3 ca-expiry.py
  441  nano ca-expiry.py
  442  python3 ca-expiry.py
  443  nano ca-expiry.py
  444  python3 ca-expiry.py
  445  nano ca-expiry.py
  446  python3 ca-expiry.py
  447  nano ca-expiry.py
  448  python3 ca-expiry.py
  449  nano ca-expiry.py
  450  python3 ca-expiry.py
  451  nano ca-expiry.py
  452  python3 ca-expiry.py
  453  nano ca-expiry.py
  454  python3 ca-expiry.py
  455  nano ca-expiry.py
  456  python3 ca-expiry.py
  457  nano ca-expiry.py
  458  python3 ca-expiry.py
  459  nano ca-expiry.py
  460  python3 ca-expiry.py
  461  nano ca-expiry.py
  462  python3 ca-expiry.py
  463  nano ca-expiry.py
  464  python3 ca-expiry.py
  465  nano ca-expiry.py
  466  python3 ca-expiry.py
  467  ls
  468  mv ca-expiry.py cert_check.py
  469  python3 cert-check.py
  470  mv cert_check.py cert-check.py
  471  python3 cert-check.py
  472  nano cert-check.py
  473  python3 cert-check.py
  474  nano cert-check.py
  475  python3 cert-check.py -d 30
  476  nano cert-check.py
  477  python3 cert-check.py -d 30
  478  nano cert-check.py
  479  python3 cert-check.py -d 30
  480  ls
  481  ls /etc/ssl/certs/ca*.*
  482  python3 cert-check.py -d 30 -c /etc/ssl/certs/cacert.pem
  483  python3 cert-check.py -d 30 -c "/etc/ssl/certs/cacert.pem"
  484  nano cert-check.py
  485  python3 cert-check.py -d 30 -c"/etc/ssl/certs/cacert.pem"
  486  nano cert-check.py
  487  python3 cert-check.py -d 30 -c"/etc/ssl/certs/cacert.pem"
  488  nano cert-check.py
  489  python3 cert-check.py -d 30 -c"/etc/ssl/certs/cacert.pem"
  490  nano cert-check.py
  491  sudo crontab -e
  492  ls
  493  cp cert-check.py ../.
  494  ls ../*.py
  495  sudo crontab -e
  496  ls
  497  ls ..
  498  ls certs2
  499  cd ..
  500  ls
  501  ls certs2
  502  cd ca-certs
  503  ls
  504  ls ../*.py
  505  diff cert-check.py ../cert-check.py
  506  mkdir junk
  507  cd junk
  508  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/cert-check.py
  509  ls
  510  diff cert-check.py ../cert-check.py
  511  cd //
  512  cd ~/.
  513  cd ca-certs
  514  ls
  515  rm -r junk
  516  ls
  517  cd ..
  518  cd ca-certs
  519  mkdir old
  520  ls
  521  mv *.pem old/.
  522  ls old
  523  ls
  524  mv *.sh old/.
  525  ls
  526  ls backup
  527  mv backup old/.
  528  ls
  529  cat index.txt
  530  mv private old/.
  531  sudo mv private old/.
  532  ls
  533  mv certs old/.
  534  sudo mv certs old/.
  535  ls
  536  sudo mv crl old/.
  537  ls
  538  sudo mv newcerts old/.
  539  ls
  540  cat sample.ttx
  541  cat sample.txt
  542  mv sample.txt old/.
  543  ls
  544  cat tmp.txt
  545  mv tmp.txt old/.
  546  ls
  547  mv v3-ca.ext old/.
  548  ls
  549  mv serial old/.
  550  ls
  551  mv index.txt old/.
  552  mv crlnumber old/.
  553  ls
  554  ls ..
  555  mv openssl.cnf old/.
  556  ls
  557  mv cert-check.py old/.
  558  ls
  559  ls ../
  560  ls ../*.sh
  561  ls ../*.py
  562  rm ../cert-check.py
  563  ls
  564  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  565  ls old
  566  nano ca-certs.sh
  567  nano old/ca-certs.sh
  568  ls ../*.sh
  569  ls
  570  cat old/ca-certs.sh
  571  cd ..
  572  ls
  573  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  574  ls ca-certs/old/ca-certs.sh
  575  cp ca-certs/old/ca-certs.sh .
  576  ls
  577  sudo bash ca-certs.sh
  578  ls
  579  rm ca-certs.sh
  580  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  581  nano ca-certs.sh
  582  sudo bash ca-certs.sh
  583  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  584  nano ca-certs.sh
  585  ls
  586  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  587  ls ca-certs.*
  588  rm ca-certs.*
  589  ls
  590  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  591  nano ca-certs.sh
  592  nano tmp.txt
  593  sudo bash ca-certs.sh
  594  rm ca-certs.sh
  595  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  596  nano tmp.txt
  597  nano ca-certs.sh
  598  sudo bash ca-certs.sh
  599  nano ca-certs.sh
  600  rm ca-certs.sh
  601  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  602  ls
  603  nano tmp.txt
  604  nano ca-certs.sh
  605  nano tmp.txt
  606  sudo bash ca-certs.sh
  607  nano ca-certs.sh
  608  ls *.sh
  609  ls ca-certs.*
  610  rm ca-certs.sh
  611  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  612  nano tmp.txt
  613  nano ca-certs.sh
  614  sudo bash ca-certs.sh
  615  nano ca-certs.sh
  616  sudo bash ca-certs.sh
  617  nano ca-certs.sh
  618  sudo bash ca-certs.sh
  619  nano ca-certs.sh
  620  m ca-certs.sh
  621  rm ca-certs.sh
  622  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  623  sudo bash ca-certs.sh
  624  nano ca-certs.sh
  625  rm ca-certs.sh
  626  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  627  nano tmp.txt
  628  nano ca-certs.sh
  629  sudo bash ca-certs.sh
  630  nano ca-certs.sh
  631  rm ca-certs.sh
  632  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  633  nano tmp.txt
  634  nano ca-certs.sh
  635  sudo bash ca-certs.sh
  636  ls
  637  sudo nano /etc/ssl/openssl.cnf
  638  rm ca-certs.sh
  639  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  640  nano tmp.txt
  641  nano ca-certs.sh
  642  sudo bash ca-certs.sh
  643  ls
  644  rm ca-certs.sh
  645  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  646  nano tmp.txt
  647  nano ca-certs.sh
  648  sudo bash ca-certs.sh
  649  nano ca-certs.sh
  650  sudo bash ca-certs.sh
  651  nano ca-certs.sh
  652  sudo bash ca-certs.sh
  653  nano ca-certs.sh
  654  sudo bash ca-certs.sh
  655  rm ca-certs.sh
  656  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  657  nano tmp.txt
  658  nano ca-certs.sh
  659  sudo bash ca-certs.sh
  660  cat /etc/ssl/openssl.cnf
  661  sudo nano /etc/ssl/openssl.cnf
  662  ls
  663  ls /etc//ssl
  664  cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  665  sudo cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  666  sudo nano /etc/ssl/openssl.cnf
  667  rm ca-certs.sh
  668  wget https://raw.githubusercontent.com/dumbo25/garage-door/main/ca-certs.sh
  669  nano tmp.txt
  670  nano ca-certs.sh
  671  sudo bash ca-certs.sh
  672  ls
  673  nano ca-certs.sh
  674  ls /etc/ssl
  675  sudo ls -l /etc/ssl/certs
  676  sudo ls -l /etc/ssl/certs/ca*.*
  677  sudo rm /etc/ssl/certs/ca-cert.pem.backup
  678  sudo rm /etc/ssl/*.cnf
  679  sudo ls -l /etc/ssl
  680  cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  681  sudo cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  682  history
  683  sudo bash ca-certs.sh
  684  nano certs2.sh
  685  cd junk
  686  nano certs2.sh
  687  ls
  688  cd ..
  689  mkdir junk2
  690  cd junk2
  691  ls ../junk
  692  cp ../junk/certs2.sh .
  693  ls
  694  cp ../ca-certs.sh .
  695  ls
  696  nano certs.sh
  697  nano certs2.sh
  698  cp ../ca-certs.sh ca-certs2.sh
  699  nano ca-certs2.sh
  700  cd junk
  701  history
pi@rpiGarageOpener:~/junk $ ls
apache.sh  certs2.sh                   glenhollow.duckdns.org-full.pem  glenhollow.duckdns.org.p12  README.Debian
backup     glenhollow.duckdns.org.csr  glenhollow.duckdns.org.key       glenhollow.duckdns.org.pem
pi@rpiGarageOpener:~/junk $ ls
apache.sh  certs2.sh                   glenhollow.duckdns.org-full.pem  glenhollow.duckdns.org.p12  README.Debian
backup     glenhollow.duckdns.org.csr  glenhollow.duckdns.org.key       glenhollow.duckdns.org.pem
pi@rpiGarageOpener:~/junk $ cd ../junk2
pi@rpiGarageOpener:~/junk2 $ ls
ca-certs2.sh  ca-certs.sh  certs2.sh
pi@rpiGarageOpener:~/junk2 $ cp ../private-data.sh .
pi@rpiGarageOpener:~/junk2 $ nano private-data.sh
pi@rpiGarageOpener:~/junk2 $ nano j2.sh
pi@rpiGarageOpener:~/junk2 $ sudo bash j2.sh

new SSLDIR="/etc/ssl/"
j2.sh: line 3: new: command not found
new CERTSDIR="$SSLDIRcerts/"
j2.sh: line 4: new: command not found
new CERTPATH="$SSLDIRcerts"
j2.sh: line 5: new: command not found


[ -d $CERTPATH ] && echo "    certs directory exists" || mkdir $CERTPATH
    certs directory exists
cd $CERTSPATH


pi@rpiGarageOpener:~/junk2 $ nano j2.sh
pi@rpiGarageOpener:~/junk2 $ sudo bash j2.sh

SSLDIR="/etc/ssl/"
CERTPATH="$SSLDIRcerts"


[ -d $CERTPATH ] && echo "    certs directory exists" || mkdir $CERTPATH
    certs directory exists
cd $CERTSPATH


pi@rpiGarageOpener:~/junk2 $ nano j2.sh
pi@rpiGarageOpener:~/junk2 $ sudo bash j2.sh

SSLDIR="/etc/ssl/"
CERTSPATH="$SSLDIRcerts"


[ -d $CERTSPATH ] && echo "    certs directory exists" || mkdir $CERTSPATH
    certs directory exists
cd $CERTSPATH


pi@rpiGarageOpener:~/junk2 $ pwd
/home/pi/junk2
pi@rpiGarageOpener:~/junk2 $ sudo bash j2.sh

SSLDIR="/etc/ssl/"
CERTSPATH="$SSLDIRcerts"


[ -d $CERTSPATH ] && echo "    certs directory exists" || mkdir $CERTSPATH
    certs directory exists
cd $CERTSPATH


pi@rpiGarageOpener:~/junk2 $ nano j2.sh
pi@rpiGarageOpener:~/junk2 $ sudo bash j2.sh

SSLDIR="/etc/ssl/"
CERTSPATH="$SSLDIRcerts"


[ -d $CERTSPATH ] && echo "    certs directory exists" || mkdir $CERTSPATH
    certs directory exists
cd $CERTSPATH
pwd
/root


pi@rpiGarageOpener:~/junk2 $ ls /etc/ssl/certs
 02265526.0                                                      d4dae3dd.0
 03179a64.0                                                      d6325660.0
 062cdee6.0                                                      d7e8dc79.0
 064e0aa9.0                                                      d853d49e.0
 06dc52d5.0                                                      dc4d6a89.0
 080911ac.0                                                      dd8e9d41.0
 09789157.0                                                      de6d66f3.0
 0a775a30.0                                                      def36a68.0
 0b1b94ef.0                                                      DigiCert_Assured_ID_Root_CA.pem
 0bf05006.0                                                      DigiCert_Assured_ID_Root_G2.pem
 0c4c9b6c.0                                                      DigiCert_Assured_ID_Root_G3.pem
 0f5dc4f3.0                                                      DigiCert_Global_Root_CA.pem
 0f6fa695.0                                                      DigiCert_Global_Root_G2.pem
 1001acf7.0                                                      DigiCert_Global_Root_G3.pem
 106f3e4d.0                                                      DigiCert_High_Assurance_EV_Root_CA.pem
 128805a3.0                                                      DigiCert_Trusted_Root_G4.pem
 14bc7599.0                                                      DST_Root_CA_X3.pem
 1636090b.0                                                      D-TRUST_Root_Class_3_CA_2_2009.pem
 18856ac4.0                                                      D-TRUST_Root_Class_3_CA_2_EV_2009.pem
 1d3472b9.0                                                      e113c810.0
 1e08bfd1.0                                                      e18bfb83.0
 1e09d511.0                                                      e36a6752.0
 244b5494.0                                                      e73d606e.0
 2923b3f9.0                                                      e8de2f56.0
 2ae6433e.0                                                      EC-ACC.pem
 2b349938.0                                                      ee64a828.0
 2e5ac55d.0                                                      EE_Certification_Centre_Root_CA.pem
 32888f65.0                                                      eed8c118.0
 349f2832.0                                                      ef954a4e.0
 3513523f.0                                                      emSign_ECC_Root_CA_-_C3.pem
 3bde41ac.0                                                      emSign_ECC_Root_CA_-_G3.pem
 3e44d2f7.0                                                      emSign_Root_CA_-_C1.pem
 3e45d192.0                                                      emSign_Root_CA_-_G1.pem
 40193066.0                                                      Entrust.net_Premium_2048_Secure_Server_CA.pem
 4042bcee.0                                                      Entrust_Root_Certification_Authority_-_EC1.pem
 40547a79.0                                                      Entrust_Root_Certification_Authority_-_G2.pem
 406c9bb1.0                                                      Entrust_Root_Certification_Authority_-_G4.pem
 4304c5e5.0                                                      Entrust_Root_Certification_Authority.pem
 48bec511.0                                                      ePKI_Root_Certification_Authority.pem
 4a6481c9.0                                                      E-Tugra_Certification_Authority.pem
 4b718d9b.0                                                      f081611a.0
 4bfab552.0                                                      f0c70a8d.0
 4f316efb.0                                                      f30dd6ad.0
 5273a94c.0                                                      f3377b1b.0
 5443e9e3.0                                                      f387163d.0
 54657681.0                                                      f39fc864.0
 57bcb2da.0                                                      f51bb24c.0
 5a4d6896.0                                                      fc5a8f99.0
 5ad8a5d6.0                                                      fe8a2cd8.0
 5c44d531.0                                                      ff34af3f.0
 5cd81ad7.0                                                      garage-door-client.pem
 5d3033c5.0                                                      garage-door-server.pem
 5e98733a.0                                                      GDCA_TrustAUTH_R5_ROOT.pem
 5f15c80c.0                                                      GeoTrust_Universal_CA_2.pem
 607986c7.0                                                      glenhollow.duckdns.org-client.pem
 626dceaf.0                                                      glenhollow.duckdns.org-full.pem
 6410666e.0                                                      glenhollow.duckdns.org.pem
 653b494a.0                                                      glenhollow.duckdns.org-server.pem
 68dd7389.0                                                      Global_Chambersign_Root_-_2008.pem
 6b99d060.0                                                      GlobalSign_ECC_Root_CA_-_R4.pem
 6d41d539.0                                                      GlobalSign_ECC_Root_CA_-_R5.pem
 6fa5da56.0                                                      GlobalSign_Root_CA.pem
 706f604c.0                                                      GlobalSign_Root_CA_-_R2.pem
 749e9e03.0                                                      GlobalSign_Root_CA_-_R3.pem
 75d1b2ed.0                                                      GlobalSign_Root_CA_-_R6.pem
 76cb8f92.0                                                      Go_Daddy_Class_2_CA.pem
 76faf6c0.0                                                      Go_Daddy_Root_Certificate_Authority_-_G2.pem
 7719f463.0                                                      GTS_Root_R1.pem
 773e07ad.0                                                      GTS_Root_R2.pem
 797abab6                                                        GTS_Root_R3.pem
 7aaf71c0.0                                                      GTS_Root_R4.pem
 7f3d5d1d.0                                                      Hellenic_Academic_and_Research_Institutions_ECC_RootCA_2015.pem
 8160b96c.0                                                      Hellenic_Academic_and_Research_Institutions_RootCA_2011.pem
 8867006a.0                                                      Hellenic_Academic_and_Research_Institutions_RootCA_2015.pem
 8cb5ee0f.0                                                      Hongkong_Post_Root_CA_1.pem
 8d86cdd1.0                                                      Hongkong_Post_Root_CA_3.pem
 930ac5d2.0                                                      IdenTrust_Commercial_Root_CA_1.pem
 93bc0acc.0                                                      IdenTrust_Public_Sector_Root_CA_1.pem
 988a38cb.0                                                      iphone.pem
 9c2e7d30.0                                                      ISRG_Root_X1.pem
 9c8dfbd4.0                                                      Izenpe.com.pem
 9d04f354.0                                                      LuxTrust_Global_Root_2.pem
 a3418fda.0                                                      Microsec_e-Szigno_Root_CA_2009.pem
 a94d09e5.0                                                     'NetLock_Arany_=Class_Gold=_Főtanúsítvány.pem'
 ACCVRAIZ1.pem                                                   Network_Solutions_Certificate_Authority.pem
 AC_RAIZ_FNMT-RCM.pem                                            OISTE_WISeKey_Global_Root_GA_CA.pem
 Actalis_Authentication_Root_CA.pem                              OISTE_WISeKey_Global_Root_GB_CA.pem
 aee5f10d.0                                                      OISTE_WISeKey_Global_Root_GC_CA.pem
 AffirmTrust_Commercial.pem                                      QuoVadis_Root_CA_1_G3.pem
 AffirmTrust_Networking.pem                                      QuoVadis_Root_CA_2_G3.pem
 AffirmTrust_Premium_ECC.pem                                     QuoVadis_Root_CA_2.pem
 AffirmTrust_Premium.pem                                         QuoVadis_Root_CA_3_G3.pem
 Amazon_Root_CA_1.pem                                            QuoVadis_Root_CA_3.pem
 Amazon_Root_CA_2.pem                                            QuoVadis_Root_CA.pem
 Amazon_Root_CA_3.pem                                            rpigarageopener-client.pem
 Amazon_Root_CA_4.pem                                            rpigarageopener.local-client.pem
 Atos_TrustedRoot_2011.pem                                       rpigarageopener.local-server.pem
 Autoridad_de_Certificacion_Firmaprofesional_CIF_A62634068.pem   rpigarageopener-server.pem
 b0e59380.0                                                      Secure_Global_CA.pem
 b1159c4c.0                                                      SecureSign_RootCA11.pem
 b1b8a7f3.0                                                      SecureTrust_CA.pem
 b66938e9.0                                                      Security_Communication_RootCA2.pem
 b727005e.0                                                      Security_Communication_Root_CA.pem
 b7a5b843.0                                                      Sonera_Class_2_Root_CA.pem
 Baltimore_CyberTrust_Root.pem                                   ssl-cert-snakeoil.pem
 Buypass_Class_2_Root_CA.pem                                     SSL.com_EV_Root_Certification_Authority_ECC.pem
 Buypass_Class_3_Root_CA.pem                                     SSL.com_EV_Root_Certification_Authority_RSA_R2.pem
 c01eb047.0                                                      SSL.com_Root_Certification_Authority_ECC.pem
 c0ff1f52.0                                                      SSL.com_Root_Certification_Authority_RSA.pem
 c28a8a30.0                                                      Staat_der_Nederlanden_EV_Root_CA.pem
 c47d9980.0                                                      Staat_der_Nederlanden_Root_CA_-_G2.pem
 ca6e4ad9.0                                                      Staat_der_Nederlanden_Root_CA_-_G3.pem
 ca-certificates.crt                                             Starfield_Class_2_CA.pem
 cacert.pem                                                      Starfield_Root_Certificate_Authority_-_G2.pem
 cacert.pem.backup                                               Starfield_Services_Root_Certificate_Authority_-_G2.pem
 CA_Disig_Root_R2.pem                                            SwissSign_Gold_CA_-_G2.pem
 cartwright25.duckdns.org-client.pem                             SwissSign_Silver_CA_-_G2.pem
 cartwright25.duckdns.org-server.pem                             SZAFIR_ROOT_CA2.pem
 cbf06781.0                                                      Taiwan_GRCA.pem
 cc450945.0                                                      TeliaSonera_Root_CA_v1.pem
 cd58d51e.0                                                      TrustCor_ECA-1.pem
 cd8c0d63.0                                                      TrustCor_RootCert_CA-1.pem
 ce5e74ef.0                                                      TrustCor_RootCert_CA-2.pem
 Certigna.pem                                                    Trustis_FPS_Root_CA.pem
 Certigna_Root_CA.pem                                            T-TeleSec_GlobalRoot_Class_2.pem
 certSIGN_ROOT_CA.pem                                            T-TeleSec_GlobalRoot_Class_3.pem
 Certum_Trusted_Network_CA_2.pem                                 TUBITAK_Kamu_SM_SSL_Kok_Sertifikasi_-_Surum_1.pem
 Certum_Trusted_Network_CA.pem                                   TWCA_Global_Root_CA.pem
 CFCA_EV_ROOT.pem                                                TWCA_Root_Certification_Authority.pem
 Chambers_of_Commerce_Root_-_2008.pem                            UCA_Extended_Validation_Root.pem
 Comodo_AAA_Services_root.pem                                    UCA_Global_G2_Root.pem
 COMODO_Certification_Authority.pem                              USERTrust_ECC_Certification_Authority.pem
 COMODO_ECC_Certification_Authority.pem                          USERTrust_RSA_Certification_Authority.pem
 COMODO_RSA_Certification_Authority.pem                          Verisign_Class_3_Public_Primary_Certification_Authority_-_G3.pem
 Cybertrust_Global_Root.pem                                      XRamp_Global_CA_Root.pem
pi@rpiGarageOpener:~/junk2 $ 
pi@rpiGarageOpener:~/junk2 $ ls
ca-certs2.sh  ca-certs.sh  certs2.sh  j2.sh  private-data.sh
pi@rpiGarageOpener:~/junk2 $ ls /etc/ssl
certs  crl  crlnumber  garage-door-server.key  index.txt  newcerts  openssl2.cnf  openssl.cnf  openssl.cnf.backup  private  serial
pi@rpiGarageOpener:~/junk2 $ ls -l /etc/ssl
total 76
drwxr-xr-x 2 root root 16384 Dec 31 14:33 certs
drwxr-xr-x 2 root root  4096 Dec 26 12:28 crl
-rw-r--r-- 1 root root     3 Dec 26 12:28 crlnumber
-rw------- 1 root root  1675 Dec 29 10:40 garage-door-server.key
-rw-r--r-- 1 root root     0 Dec 29 17:27 index.txt
drwxr-xr-x 2 root root  4096 Dec 26 12:28 newcerts
-rw-r--r-- 1 root root 11302 Dec 31 11:45 openssl2.cnf
-rw-r--r-- 1 root root 11329 Dec 31 14:03 openssl.cnf
-rw-r--r-- 1 root root 11118 Dec 29 16:36 openssl.cnf.backup
drwx------ 2 root root  4096 Dec 31 14:33 private
-rw-r--r-- 1 root root     3 Dec 26 12:28 serial
pi@rpiGarageOpener:~/junk2 $ ls -l /etc/ssl/private
ls: cannot open directory '/etc/ssl/private': Permission denied
pi@rpiGarageOpener:~/junk2 $ sudo ls -l /etc/ssl/private
total 120
-rw------- 1 root root     3243 Dec 31 15:06 cacert.key
-rw------- 1 root root     3247 Dec 31 14:13 ca.key
-rw------- 1 root root     1854 Dec 29 17:28 cakey.pem
-rw------- 1 root root        0 Dec 26 12:28 cakey.pem.backup
-rw------- 1 root root     3243 Dec 30 15:28 cartwright25.duckdns.org-client-key.pem
-rw-r--r-- 1 root root     1809 Dec 30 15:28 cartwright25.duckdns.org-client.req
-rw------- 1 root root     3247 Dec 30 15:28 cartwright25.duckdns.org-server-key.pem
-rw-r--r-- 1 root root     1809 Dec 30 15:28 cartwright25.duckdns.org-server.req
-rw------- 1 root root     3247 Dec 30 15:29 garage-door-client-key.pem
-rw------- 1 root root     3933 Dec 30 14:49 garage-door-client.p12
-rw-r--r-- 1 root root     1793 Dec 30 15:29 garage-door-client.req
-rw------- 1 root root     3247 Dec 30 15:29 garage-door-server-key.pem
-rw-r--r-- 1 root root     1793 Dec 30 15:29 garage-door-server.req
-rw------- 1 root root     3243 Dec 31 11:47 glenhollow.duckdns.org-client-key.pem
-rw-r--r-- 1 root root     1797 Dec 31 11:47 glenhollow.duckdns.org-client.req
-rw------- 1 root root     3243 Dec 31 15:06 glenhollow.duckdns.org.key
-rw------- 1 root root     3243 Dec 31 11:46 glenhollow.duckdns.org-server-key.pem
-rw-r--r-- 1 root root     1797 Dec 31 11:46 glenhollow.duckdns.org-server.req
-rw------- 1 root root     3243 Dec 31 09:06 iphone.key
-rw------- 1 root root     3243 Dec 30 15:25 rpigarageopener-client-key.pem
-rw------- 1 root root     3933 Dec 30 14:04 rpigarageopener-client.p12
-rw-r--r-- 1 root root     1797 Dec 30 15:25 rpigarageopener-client.req
-rw------- 1 root root     3243 Dec 30 15:26 rpigarageopener.local-client-key.pem
-rw------- 1 root root     3949 Dec 30 14:09 rpigarageopener.local-client.p12
-rw-r--r-- 1 root root     1805 Dec 30 15:26 rpigarageopener.local-client.req
-rw------- 1 root root     3247 Dec 30 15:25 rpigarageopener.local-server-key.pem
-rw-r--r-- 1 root root     1805 Dec 30 15:25 rpigarageopener.local-server.req
-rw------- 1 root root     3243 Dec 30 15:24 rpigarageopener-server-key.pem
-rw-r--r-- 1 root root     1797 Dec 30 15:24 rpigarageopener-server.req
-rw------- 1 root root     3243 Dec 30 15:18 -server-key.pem
-rw-r----- 1 root ssl-cert 1704 Dec 31 07:39 ssl-cert-snakeoil.key
pi@rpiGarageOpener:~/junk2 $ nano private-data.sh
pi@rpiGarageOpener:~/junk2 $ nano private-data.sh
pi@rpiGarageOpener:~/junk2 $ ls
cacert-pass.key  ca-certs2.sh  ca-certs.sh  ca-index.txt  certs2.sh  j2.sh  private-data.sh
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ sudo ls -l /etc/ssl/openssl.cnf
-rw-r--r-- 1 root root 11530 Jan  1 08:35 /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk2 $ sudo ls -l /etc/ssl/certs/cacert.pem
-rw-r--r-- 1 root root 2204 Dec 31 15:06 /etc/ssl/certs/cacert.pem
pi@rpiGarageOpener:~/junk2 $ sudo ls -l /etc/ssl/private
total 124
-rw------- 1 root root     3243 Jan  1 08:36 cacert.key
-rw------- 1 root root     3243 Dec 31 15:06 cacert.key.backup
-rw------- 1 root root     3247 Dec 31 14:13 ca.key
-rw------- 1 root root     1854 Dec 29 17:28 cakey.pem
-rw------- 1 root root        0 Dec 26 12:28 cakey.pem.backup
-rw------- 1 root root     3243 Dec 30 15:28 cartwright25.duckdns.org-client-key.pem
-rw-r--r-- 1 root root     1809 Dec 30 15:28 cartwright25.duckdns.org-client.req
-rw------- 1 root root     3247 Dec 30 15:28 cartwright25.duckdns.org-server-key.pem
-rw-r--r-- 1 root root     1809 Dec 30 15:28 cartwright25.duckdns.org-server.req
-rw------- 1 root root     3247 Dec 30 15:29 garage-door-client-key.pem
-rw------- 1 root root     3933 Dec 30 14:49 garage-door-client.p12
-rw-r--r-- 1 root root     1793 Dec 30 15:29 garage-door-client.req
-rw------- 1 root root     3247 Dec 30 15:29 garage-door-server-key.pem
-rw-r--r-- 1 root root     1793 Dec 30 15:29 garage-door-server.req
-rw------- 1 root root     3243 Dec 31 11:47 glenhollow.duckdns.org-client-key.pem
-rw-r--r-- 1 root root     1797 Dec 31 11:47 glenhollow.duckdns.org-client.req
-rw------- 1 root root     3243 Dec 31 15:06 glenhollow.duckdns.org.key
-rw------- 1 root root     3243 Dec 31 11:46 glenhollow.duckdns.org-server-key.pem
-rw-r--r-- 1 root root     1797 Dec 31 11:46 glenhollow.duckdns.org-server.req
-rw------- 1 root root     3243 Dec 31 09:06 iphone.key
-rw------- 1 root root     3243 Dec 30 15:25 rpigarageopener-client-key.pem
-rw------- 1 root root     3933 Dec 30 14:04 rpigarageopener-client.p12
-rw-r--r-- 1 root root     1797 Dec 30 15:25 rpigarageopener-client.req
-rw------- 1 root root     3243 Dec 30 15:26 rpigarageopener.local-client-key.pem
-rw------- 1 root root     3949 Dec 30 14:09 rpigarageopener.local-client.p12
-rw-r--r-- 1 root root     1805 Dec 30 15:26 rpigarageopener.local-client.req
-rw------- 1 root root     3247 Dec 30 15:25 rpigarageopener.local-server-key.pem
-rw-r--r-- 1 root root     1805 Dec 30 15:25 rpigarageopener.local-server.req
-rw------- 1 root root     3243 Dec 30 15:24 rpigarageopener-server-key.pem
-rw-r--r-- 1 root root     1797 Dec 30 15:24 rpigarageopener-server.req
-rw------- 1 root root     3243 Dec 30 15:18 -server-key.pem
-rw-r----- 1 root ssl-cert 1704 Dec 31 07:39 ssl-cert-snakeoil.key
pi@rpiGarageOpener:~/junk2 $ sudo ls -l /etc/ssl/certs | grep ca
lrwxrwxrwx 1 root root     45 Aug 20 05:32 02265526.0 -> Entrust_Root_Certification_Authority_-_G2.pem
lrwxrwxrwx 1 root root     50 Aug 20 05:32 06dc52d5.0 -> SSL.com_EV_Root_Certification_Authority_RSA_R2.pem
lrwxrwxrwx 1 root root     54 Aug 20 05:32 09789157.0 -> Starfield_Services_Root_Certificate_Authority_-_G2.pem
lrwxrwxrwx 1 root root     44 Aug 20 05:32 0bf05006.0 -> SSL.com_Root_Certification_Authority_ECC.pem
lrwxrwxrwx 1 root root     46 Aug 20 05:32 106f3e4d.0 -> Entrust_Root_Certification_Authority_-_EC1.pem
lrwxrwxrwx 1 root root     35 Aug 20 05:32 128805a3.0 -> EE_Certification_Centre_Root_CA.pem
lrwxrwxrwx 1 root root     59 Aug 20 05:32 1636090b.0 -> Hellenic_Academic_and_Research_Institutions_RootCA_2011.pem
lrwxrwxrwx 1 root root     59 Aug 20 05:32 32888f65.0 -> Hellenic_Academic_and_Research_Institutions_RootCA_2015.pem
lrwxrwxrwx 1 root root     61 Aug 20 05:32 3bde41ac.0 -> Autoridad_de_Certificacion_Firmaprofesional_CIF_A62634068.pem
lrwxrwxrwx 1 root root     34 Aug 20 05:32 40547a79.0 -> COMODO_Certification_Authority.pem
lrwxrwxrwx 1 root root     43 Aug 20 05:32 4304c5e5.0 -> Network_Solutions_Certificate_Authority.pem
lrwxrwxrwx 1 root root     45 Aug 20 05:32 4bfab552.0 -> Starfield_Root_Certificate_Authority_-_G2.pem
lrwxrwxrwx 1 root root     35 Aug 20 05:32 5273a94c.0 -> E-Tugra_Certification_Authority.pem
lrwxrwxrwx 1 root root     45 Aug 20 05:32 5e98733a.0 -> Entrust_Root_Certification_Authority_-_G4.pem
lrwxrwxrwx 1 root root     40 Aug 20 05:32 6b99d060.0 -> Entrust_Root_Certification_Authority.pem
lrwxrwxrwx 1 root root     44 Aug 20 05:32 6fa5da56.0 -> SSL.com_Root_Certification_Authority_RSA.pem
lrwxrwxrwx 1 root root     63 Aug 20 05:32 7719f463.0 -> Hellenic_Academic_and_Research_Institutions_ECC_RootCA_2015.pem
lrwxrwxrwx 1 root root     34 Aug 20 05:32 930ac5d2.0 -> Actalis_Authentication_Root_CA.pem
lrwxrwxrwx 1 root root     48 Aug 20 05:32 ACCVRAIZ1.pem -> /usr/share/ca-certificates/mozilla/ACCVRAIZ1.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 AC_RAIZ_FNMT-RCM.pem -> /usr/share/ca-certificates/mozilla/AC_RAIZ_FNMT-RCM.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 Actalis_Authentication_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Actalis_Authentication_Root_CA.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 AffirmTrust_Commercial.pem -> /usr/share/ca-certificates/mozilla/AffirmTrust_Commercial.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 AffirmTrust_Networking.pem -> /usr/share/ca-certificates/mozilla/AffirmTrust_Networking.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 AffirmTrust_Premium_ECC.pem -> /usr/share/ca-certificates/mozilla/AffirmTrust_Premium_ECC.crt
lrwxrwxrwx 1 root root     58 Aug 20 05:32 AffirmTrust_Premium.pem -> /usr/share/ca-certificates/mozilla/AffirmTrust_Premium.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 Amazon_Root_CA_1.pem -> /usr/share/ca-certificates/mozilla/Amazon_Root_CA_1.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 Amazon_Root_CA_2.pem -> /usr/share/ca-certificates/mozilla/Amazon_Root_CA_2.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 Amazon_Root_CA_3.pem -> /usr/share/ca-certificates/mozilla/Amazon_Root_CA_3.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 Amazon_Root_CA_4.pem -> /usr/share/ca-certificates/mozilla/Amazon_Root_CA_4.crt
lrwxrwxrwx 1 root root     60 Aug 20 05:32 Atos_TrustedRoot_2011.pem -> /usr/share/ca-certificates/mozilla/Atos_TrustedRoot_2011.crt
lrwxrwxrwx 1 root root     96 Aug 20 05:32 Autoridad_de_Certificacion_Firmaprofesional_CIF_A62634068.pem -> /usr/share/ca-certificates/mozilla/Autoridad_de_Certificacion_Firmaprofesional_CIF_A62634068.crt
lrwxrwxrwx 1 root root     37 Aug 20 05:32 b7a5b843.0 -> TWCA_Root_Certification_Authority.pem
lrwxrwxrwx 1 root root     64 Aug 20 05:32 Baltimore_CyberTrust_Root.pem -> /usr/share/ca-certificates/mozilla/Baltimore_CyberTrust_Root.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 Buypass_Class_2_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Buypass_Class_2_Root_CA.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 Buypass_Class_3_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Buypass_Class_3_Root_CA.crt
lrwxrwxrwx 1 root root     64 Aug 20 05:32 c0ff1f52.0 -> Verisign_Class_3_Public_Primary_Certification_Authority_-_G3.pem
lrwxrwxrwx 1 root root     37 Aug 20 05:32 ca6e4ad9.0 -> ePKI_Root_Certification_Authority.pem
-rw-r--r-- 1 root root 198416 Aug 20 05:33 ca-certificates.crt
-rw-r--r-- 1 root root   2204 Dec 31 15:06 cacert.pem
-rw-r--r-- 1 root root   1233 Dec 25 11:20 cacert.pem.backup
lrwxrwxrwx 1 root root     55 Aug 20 05:32 CA_Disig_Root_R2.pem -> /usr/share/ca-certificates/mozilla/CA_Disig_Root_R2.crt
-rw-r--r-- 1 root root   1671 Dec 30 15:28 cartwright25.duckdns.org-client.pem
-rw-r--r-- 1 root root   1671 Dec 30 15:28 cartwright25.duckdns.org-server.pem
lrwxrwxrwx 1 root root     44 Aug 20 05:32 cbf06781.0 -> Go_Daddy_Root_Certificate_Authority_-_G2.pem
lrwxrwxrwx 1 root root     34 Aug 20 05:32 cd58d51e.0 -> Security_Communication_RootCA2.pem
lrwxrwxrwx 1 root root     47 Aug 20 05:32 Certigna.pem -> /usr/share/ca-certificates/mozilla/Certigna.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 Certigna_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Certigna_Root_CA.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 certSIGN_ROOT_CA.pem -> /usr/share/ca-certificates/mozilla/certSIGN_ROOT_CA.crt
lrwxrwxrwx 1 root root     66 Aug 20 05:32 Certum_Trusted_Network_CA_2.pem -> /usr/share/ca-certificates/mozilla/Certum_Trusted_Network_CA_2.crt
lrwxrwxrwx 1 root root     64 Aug 20 05:32 Certum_Trusted_Network_CA.pem -> /usr/share/ca-certificates/mozilla/Certum_Trusted_Network_CA.crt
lrwxrwxrwx 1 root root     51 Aug 20 05:32 CFCA_EV_ROOT.pem -> /usr/share/ca-certificates/mozilla/CFCA_EV_ROOT.crt
lrwxrwxrwx 1 root root     71 Aug 20 05:32 Chambers_of_Commerce_Root_-_2008.pem -> /usr/share/ca-certificates/mozilla/Chambers_of_Commerce_Root_-_2008.crt
lrwxrwxrwx 1 root root     63 Aug 20 05:32 Comodo_AAA_Services_root.pem -> /usr/share/ca-certificates/mozilla/Comodo_AAA_Services_root.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 COMODO_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/COMODO_Certification_Authority.crt
lrwxrwxrwx 1 root root     73 Aug 20 05:32 COMODO_ECC_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/COMODO_ECC_Certification_Authority.crt
lrwxrwxrwx 1 root root     73 Aug 20 05:32 COMODO_RSA_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/COMODO_RSA_Certification_Authority.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 Cybertrust_Global_Root.pem -> /usr/share/ca-certificates/mozilla/Cybertrust_Global_Root.crt
lrwxrwxrwx 1 root root     38 Aug 20 05:32 d6325660.0 -> COMODO_RSA_Certification_Authority.pem
lrwxrwxrwx 1 root root     66 Aug 20 05:32 DigiCert_Assured_ID_Root_CA.pem -> /usr/share/ca-certificates/mozilla/DigiCert_Assured_ID_Root_CA.crt
lrwxrwxrwx 1 root root     66 Aug 20 05:32 DigiCert_Assured_ID_Root_G2.pem -> /usr/share/ca-certificates/mozilla/DigiCert_Assured_ID_Root_G2.crt
lrwxrwxrwx 1 root root     66 Aug 20 05:32 DigiCert_Assured_ID_Root_G3.pem -> /usr/share/ca-certificates/mozilla/DigiCert_Assured_ID_Root_G3.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 DigiCert_Global_Root_CA.pem -> /usr/share/ca-certificates/mozilla/DigiCert_Global_Root_CA.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 DigiCert_Global_Root_G2.pem -> /usr/share/ca-certificates/mozilla/DigiCert_Global_Root_G2.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 DigiCert_Global_Root_G3.pem -> /usr/share/ca-certificates/mozilla/DigiCert_Global_Root_G3.crt
lrwxrwxrwx 1 root root     73 Aug 20 05:32 DigiCert_High_Assurance_EV_Root_CA.pem -> /usr/share/ca-certificates/mozilla/DigiCert_High_Assurance_EV_Root_CA.crt
lrwxrwxrwx 1 root root     63 Aug 20 05:32 DigiCert_Trusted_Root_G4.pem -> /usr/share/ca-certificates/mozilla/DigiCert_Trusted_Root_G4.crt
lrwxrwxrwx 1 root root     53 Aug 20 05:32 DST_Root_CA_X3.pem -> /usr/share/ca-certificates/mozilla/DST_Root_CA_X3.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 D-TRUST_Root_Class_3_CA_2_2009.pem -> /usr/share/ca-certificates/mozilla/D-TRUST_Root_Class_3_CA_2_2009.crt
lrwxrwxrwx 1 root root     72 Aug 20 05:32 D-TRUST_Root_Class_3_CA_2_EV_2009.pem -> /usr/share/ca-certificates/mozilla/D-TRUST_Root_Class_3_CA_2_EV_2009.crt
lrwxrwxrwx 1 root root     45 Aug 20 05:32 EC-ACC.pem -> /usr/share/ca-certificates/mozilla/EC-ACC.crt
lrwxrwxrwx 1 root root     70 Aug 20 05:32 EE_Certification_Centre_Root_CA.pem -> /usr/share/ca-certificates/mozilla/EE_Certification_Centre_Root_CA.crt
lrwxrwxrwx 1 root root     38 Aug 20 05:32 eed8c118.0 -> COMODO_ECC_Certification_Authority.pem
lrwxrwxrwx 1 root root     62 Aug 20 05:32 emSign_ECC_Root_CA_-_C3.pem -> /usr/share/ca-certificates/mozilla/emSign_ECC_Root_CA_-_C3.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 emSign_ECC_Root_CA_-_G3.pem -> /usr/share/ca-certificates/mozilla/emSign_ECC_Root_CA_-_G3.crt
lrwxrwxrwx 1 root root     58 Aug 20 05:32 emSign_Root_CA_-_C1.pem -> /usr/share/ca-certificates/mozilla/emSign_Root_CA_-_C1.crt
lrwxrwxrwx 1 root root     58 Aug 20 05:32 emSign_Root_CA_-_G1.pem -> /usr/share/ca-certificates/mozilla/emSign_Root_CA_-_G1.crt
lrwxrwxrwx 1 root root     80 Aug 20 05:32 Entrust.net_Premium_2048_Secure_Server_CA.pem -> /usr/share/ca-certificates/mozilla/Entrust.net_Premium_2048_Secure_Server_CA.crt
lrwxrwxrwx 1 root root     81 Aug 20 05:32 Entrust_Root_Certification_Authority_-_EC1.pem -> /usr/share/ca-certificates/mozilla/Entrust_Root_Certification_Authority_-_EC1.crt
lrwxrwxrwx 1 root root     80 Aug 20 05:32 Entrust_Root_Certification_Authority_-_G2.pem -> /usr/share/ca-certificates/mozilla/Entrust_Root_Certification_Authority_-_G2.crt
lrwxrwxrwx 1 root root     80 Aug 20 05:32 Entrust_Root_Certification_Authority_-_G4.pem -> /usr/share/ca-certificates/mozilla/Entrust_Root_Certification_Authority_-_G4.crt
lrwxrwxrwx 1 root root     75 Aug 20 05:32 Entrust_Root_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/Entrust_Root_Certification_Authority.crt
lrwxrwxrwx 1 root root     72 Aug 20 05:32 ePKI_Root_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/ePKI_Root_Certification_Authority.crt
lrwxrwxrwx 1 root root     70 Aug 20 05:32 E-Tugra_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/E-Tugra_Certification_Authority.crt
lrwxrwxrwx 1 root root     47 Aug 20 05:32 f0c70a8d.0 -> SSL.com_EV_Root_Certification_Authority_ECC.pem
lrwxrwxrwx 1 root root     41 Aug 20 05:32 f30dd6ad.0 -> USERTrust_ECC_Certification_Authority.pem
lrwxrwxrwx 1 root root     34 Aug 20 05:32 f3377b1b.0 -> Security_Communication_Root_CA.pem
lrwxrwxrwx 1 root root     41 Aug 20 05:32 fc5a8f99.0 -> USERTrust_RSA_Certification_Authority.pem
lrwxrwxrwx 1 root root     61 Aug 20 05:32 GDCA_TrustAUTH_R5_ROOT.pem -> /usr/share/ca-certificates/mozilla/GDCA_TrustAUTH_R5_ROOT.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 GeoTrust_Universal_CA_2.pem -> /usr/share/ca-certificates/mozilla/GeoTrust_Universal_CA_2.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 Global_Chambersign_Root_-_2008.pem -> /usr/share/ca-certificates/mozilla/Global_Chambersign_Root_-_2008.crt
lrwxrwxrwx 1 root root     66 Aug 20 05:32 GlobalSign_ECC_Root_CA_-_R4.pem -> /usr/share/ca-certificates/mozilla/GlobalSign_ECC_Root_CA_-_R4.crt
lrwxrwxrwx 1 root root     66 Aug 20 05:32 GlobalSign_ECC_Root_CA_-_R5.pem -> /usr/share/ca-certificates/mozilla/GlobalSign_ECC_Root_CA_-_R5.crt
lrwxrwxrwx 1 root root     57 Aug 20 05:32 GlobalSign_Root_CA.pem -> /usr/share/ca-certificates/mozilla/GlobalSign_Root_CA.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 GlobalSign_Root_CA_-_R2.pem -> /usr/share/ca-certificates/mozilla/GlobalSign_Root_CA_-_R2.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 GlobalSign_Root_CA_-_R3.pem -> /usr/share/ca-certificates/mozilla/GlobalSign_Root_CA_-_R3.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 GlobalSign_Root_CA_-_R6.pem -> /usr/share/ca-certificates/mozilla/GlobalSign_Root_CA_-_R6.crt
lrwxrwxrwx 1 root root     58 Aug 20 05:32 Go_Daddy_Class_2_CA.pem -> /usr/share/ca-certificates/mozilla/Go_Daddy_Class_2_CA.crt
lrwxrwxrwx 1 root root     79 Aug 20 05:32 Go_Daddy_Root_Certificate_Authority_-_G2.pem -> /usr/share/ca-certificates/mozilla/Go_Daddy_Root_Certificate_Authority_-_G2.crt
lrwxrwxrwx 1 root root     50 Aug 20 05:32 GTS_Root_R1.pem -> /usr/share/ca-certificates/mozilla/GTS_Root_R1.crt
lrwxrwxrwx 1 root root     50 Aug 20 05:32 GTS_Root_R2.pem -> /usr/share/ca-certificates/mozilla/GTS_Root_R2.crt
lrwxrwxrwx 1 root root     50 Aug 20 05:32 GTS_Root_R3.pem -> /usr/share/ca-certificates/mozilla/GTS_Root_R3.crt
lrwxrwxrwx 1 root root     50 Aug 20 05:32 GTS_Root_R4.pem -> /usr/share/ca-certificates/mozilla/GTS_Root_R4.crt
lrwxrwxrwx 1 root root     98 Aug 20 05:32 Hellenic_Academic_and_Research_Institutions_ECC_RootCA_2015.pem -> /usr/share/ca-certificates/mozilla/Hellenic_Academic_and_Research_Institutions_ECC_RootCA_2015.crt
lrwxrwxrwx 1 root root     94 Aug 20 05:32 Hellenic_Academic_and_Research_Institutions_RootCA_2011.pem -> /usr/share/ca-certificates/mozilla/Hellenic_Academic_and_Research_Institutions_RootCA_2011.crt
lrwxrwxrwx 1 root root     94 Aug 20 05:32 Hellenic_Academic_and_Research_Institutions_RootCA_2015.pem -> /usr/share/ca-certificates/mozilla/Hellenic_Academic_and_Research_Institutions_RootCA_2015.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 Hongkong_Post_Root_CA_1.pem -> /usr/share/ca-certificates/mozilla/Hongkong_Post_Root_CA_1.crt
lrwxrwxrwx 1 root root     62 Aug 20 05:32 Hongkong_Post_Root_CA_3.pem -> /usr/share/ca-certificates/mozilla/Hongkong_Post_Root_CA_3.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 IdenTrust_Commercial_Root_CA_1.pem -> /usr/share/ca-certificates/mozilla/IdenTrust_Commercial_Root_CA_1.crt
lrwxrwxrwx 1 root root     72 Aug 20 05:32 IdenTrust_Public_Sector_Root_CA_1.pem -> /usr/share/ca-certificates/mozilla/IdenTrust_Public_Sector_Root_CA_1.crt
lrwxrwxrwx 1 root root     51 Aug 20 05:32 ISRG_Root_X1.pem -> /usr/share/ca-certificates/mozilla/ISRG_Root_X1.crt
lrwxrwxrwx 1 root root     49 Aug 20 05:32 Izenpe.com.pem -> /usr/share/ca-certificates/mozilla/Izenpe.com.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 LuxTrust_Global_Root_2.pem -> /usr/share/ca-certificates/mozilla/LuxTrust_Global_Root_2.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 Microsec_e-Szigno_Root_CA_2009.pem -> /usr/share/ca-certificates/mozilla/Microsec_e-Szigno_Root_CA_2009.crt
lrwxrwxrwx 1 root root     83 Aug 20 05:32 NetLock_Arany_=Class_Gold=_Főtanúsítvány.pem -> /usr/share/ca-certificates/mozilla/NetLock_Arany_=Class_Gold=_Főtanúsítvány.crt
lrwxrwxrwx 1 root root     78 Aug 20 05:32 Network_Solutions_Certificate_Authority.pem -> /usr/share/ca-certificates/mozilla/Network_Solutions_Certificate_Authority.crt
lrwxrwxrwx 1 root root     70 Aug 20 05:32 OISTE_WISeKey_Global_Root_GA_CA.pem -> /usr/share/ca-certificates/mozilla/OISTE_WISeKey_Global_Root_GA_CA.crt
lrwxrwxrwx 1 root root     70 Aug 20 05:32 OISTE_WISeKey_Global_Root_GB_CA.pem -> /usr/share/ca-certificates/mozilla/OISTE_WISeKey_Global_Root_GB_CA.crt
lrwxrwxrwx 1 root root     70 Aug 20 05:32 OISTE_WISeKey_Global_Root_GC_CA.pem -> /usr/share/ca-certificates/mozilla/OISTE_WISeKey_Global_Root_GC_CA.crt
lrwxrwxrwx 1 root root     60 Aug 20 05:32 QuoVadis_Root_CA_1_G3.pem -> /usr/share/ca-certificates/mozilla/QuoVadis_Root_CA_1_G3.crt
lrwxrwxrwx 1 root root     60 Aug 20 05:32 QuoVadis_Root_CA_2_G3.pem -> /usr/share/ca-certificates/mozilla/QuoVadis_Root_CA_2_G3.crt
lrwxrwxrwx 1 root root     57 Aug 20 05:32 QuoVadis_Root_CA_2.pem -> /usr/share/ca-certificates/mozilla/QuoVadis_Root_CA_2.crt
lrwxrwxrwx 1 root root     60 Aug 20 05:32 QuoVadis_Root_CA_3_G3.pem -> /usr/share/ca-certificates/mozilla/QuoVadis_Root_CA_3_G3.crt
lrwxrwxrwx 1 root root     57 Aug 20 05:32 QuoVadis_Root_CA_3.pem -> /usr/share/ca-certificates/mozilla/QuoVadis_Root_CA_3.crt
lrwxrwxrwx 1 root root     55 Aug 20 05:32 QuoVadis_Root_CA.pem -> /usr/share/ca-certificates/mozilla/QuoVadis_Root_CA.crt
-rw-r--r-- 1 root root   1667 Dec 30 15:26 rpigarageopener.local-client.pem
-rw-r--r-- 1 root root   1667 Dec 30 15:25 rpigarageopener.local-server.pem
lrwxrwxrwx 1 root root     55 Aug 20 05:32 Secure_Global_CA.pem -> /usr/share/ca-certificates/mozilla/Secure_Global_CA.crt
lrwxrwxrwx 1 root root     58 Aug 20 05:32 SecureSign_RootCA11.pem -> /usr/share/ca-certificates/mozilla/SecureSign_RootCA11.crt
lrwxrwxrwx 1 root root     53 Aug 20 05:32 SecureTrust_CA.pem -> /usr/share/ca-certificates/mozilla/SecureTrust_CA.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 Security_Communication_RootCA2.pem -> /usr/share/ca-certificates/mozilla/Security_Communication_RootCA2.crt
lrwxrwxrwx 1 root root     69 Aug 20 05:32 Security_Communication_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Security_Communication_Root_CA.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 Sonera_Class_2_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Sonera_Class_2_Root_CA.crt
lrwxrwxrwx 1 root root     82 Aug 20 05:32 SSL.com_EV_Root_Certification_Authority_ECC.pem -> /usr/share/ca-certificates/mozilla/SSL.com_EV_Root_Certification_Authority_ECC.crt
lrwxrwxrwx 1 root root     85 Aug 20 05:32 SSL.com_EV_Root_Certification_Authority_RSA_R2.pem -> /usr/share/ca-certificates/mozilla/SSL.com_EV_Root_Certification_Authority_RSA_R2.crt
lrwxrwxrwx 1 root root     79 Aug 20 05:32 SSL.com_Root_Certification_Authority_ECC.pem -> /usr/share/ca-certificates/mozilla/SSL.com_Root_Certification_Authority_ECC.crt
lrwxrwxrwx 1 root root     79 Aug 20 05:32 SSL.com_Root_Certification_Authority_RSA.pem -> /usr/share/ca-certificates/mozilla/SSL.com_Root_Certification_Authority_RSA.crt
lrwxrwxrwx 1 root root     71 Aug 20 05:32 Staat_der_Nederlanden_EV_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Staat_der_Nederlanden_EV_Root_CA.crt
lrwxrwxrwx 1 root root     73 Aug 20 05:32 Staat_der_Nederlanden_Root_CA_-_G2.pem -> /usr/share/ca-certificates/mozilla/Staat_der_Nederlanden_Root_CA_-_G2.crt
lrwxrwxrwx 1 root root     73 Aug 20 05:32 Staat_der_Nederlanden_Root_CA_-_G3.pem -> /usr/share/ca-certificates/mozilla/Staat_der_Nederlanden_Root_CA_-_G3.crt
lrwxrwxrwx 1 root root     59 Aug 20 05:32 Starfield_Class_2_CA.pem -> /usr/share/ca-certificates/mozilla/Starfield_Class_2_CA.crt
lrwxrwxrwx 1 root root     80 Aug 20 05:32 Starfield_Root_Certificate_Authority_-_G2.pem -> /usr/share/ca-certificates/mozilla/Starfield_Root_Certificate_Authority_-_G2.crt
lrwxrwxrwx 1 root root     89 Aug 20 05:32 Starfield_Services_Root_Certificate_Authority_-_G2.pem -> /usr/share/ca-certificates/mozilla/Starfield_Services_Root_Certificate_Authority_-_G2.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 SwissSign_Gold_CA_-_G2.pem -> /usr/share/ca-certificates/mozilla/SwissSign_Gold_CA_-_G2.crt
lrwxrwxrwx 1 root root     63 Aug 20 05:32 SwissSign_Silver_CA_-_G2.pem -> /usr/share/ca-certificates/mozilla/SwissSign_Silver_CA_-_G2.crt
lrwxrwxrwx 1 root root     54 Aug 20 05:32 SZAFIR_ROOT_CA2.pem -> /usr/share/ca-certificates/mozilla/SZAFIR_ROOT_CA2.crt
lrwxrwxrwx 1 root root     50 Aug 20 05:32 Taiwan_GRCA.pem -> /usr/share/ca-certificates/mozilla/Taiwan_GRCA.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 TeliaSonera_Root_CA_v1.pem -> /usr/share/ca-certificates/mozilla/TeliaSonera_Root_CA_v1.crt
lrwxrwxrwx 1 root root     53 Aug 20 05:32 TrustCor_ECA-1.pem -> /usr/share/ca-certificates/mozilla/TrustCor_ECA-1.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 TrustCor_RootCert_CA-1.pem -> /usr/share/ca-certificates/mozilla/TrustCor_RootCert_CA-1.crt
lrwxrwxrwx 1 root root     61 Aug 20 05:32 TrustCor_RootCert_CA-2.pem -> /usr/share/ca-certificates/mozilla/TrustCor_RootCert_CA-2.crt
lrwxrwxrwx 1 root root     58 Aug 20 05:32 Trustis_FPS_Root_CA.pem -> /usr/share/ca-certificates/mozilla/Trustis_FPS_Root_CA.crt
lrwxrwxrwx 1 root root     67 Aug 20 05:32 T-TeleSec_GlobalRoot_Class_2.pem -> /usr/share/ca-certificates/mozilla/T-TeleSec_GlobalRoot_Class_2.crt
lrwxrwxrwx 1 root root     67 Aug 20 05:32 T-TeleSec_GlobalRoot_Class_3.pem -> /usr/share/ca-certificates/mozilla/T-TeleSec_GlobalRoot_Class_3.crt
lrwxrwxrwx 1 root root     84 Aug 20 05:32 TUBITAK_Kamu_SM_SSL_Kok_Sertifikasi_-_Surum_1.pem -> /usr/share/ca-certificates/mozilla/TUBITAK_Kamu_SM_SSL_Kok_Sertifikasi_-_Surum_1.crt
lrwxrwxrwx 1 root root     58 Aug 20 05:32 TWCA_Global_Root_CA.pem -> /usr/share/ca-certificates/mozilla/TWCA_Global_Root_CA.crt
lrwxrwxrwx 1 root root     72 Aug 20 05:32 TWCA_Root_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/TWCA_Root_Certification_Authority.crt
lrwxrwxrwx 1 root root     67 Aug 20 05:32 UCA_Extended_Validation_Root.pem -> /usr/share/ca-certificates/mozilla/UCA_Extended_Validation_Root.crt
lrwxrwxrwx 1 root root     57 Aug 20 05:32 UCA_Global_G2_Root.pem -> /usr/share/ca-certificates/mozilla/UCA_Global_G2_Root.crt
lrwxrwxrwx 1 root root     76 Aug 20 05:32 USERTrust_ECC_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/USERTrust_ECC_Certification_Authority.crt
lrwxrwxrwx 1 root root     76 Aug 20 05:32 USERTrust_RSA_Certification_Authority.pem -> /usr/share/ca-certificates/mozilla/USERTrust_RSA_Certification_Authority.crt
lrwxrwxrwx 1 root root     99 Aug 20 05:32 Verisign_Class_3_Public_Primary_Certification_Authority_-_G3.pem -> /usr/share/ca-certificates/mozilla/Verisign_Class_3_Public_Primary_Certification_Authority_-_G3.crt
lrwxrwxrwx 1 root root     59 Aug 20 05:32 XRamp_Global_CA_Root.pem -> /usr/share/ca-certificates/mozilla/XRamp_Global_CA_Root.crt
pi@rpiGarageOpener:~/junk2 $ sudo ls -l /etc/ssl/certs | grep cacert
-rw-r--r-- 1 root root   2204 Dec 31 15:06 cacert.pem
-rw-r--r-- 1 root root   1233 Dec 25 11:20 cacert.pem.backup
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ ls
ca-certs2.sh  ca-certs.sh  ca-index.txt  certs2.sh  j2.sh  private-data.sh
pi@rpiGarageOpener:~/junk2 $ ls
cacert-pass.key  ca-certs.sh  ca-index.txt  certs2.sh  old  private-data.sh
pi@rpiGarageOpener:~/junk2 $ nano ca-cert.sh
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ echo 01 > serial
pi@rpiGarageOpener:~/junk2 $ ls
ca-certs.sh  ca-index.txt  certs2.sh  old  private-data.sh  serial
pi@rpiGarageOpener:~/junk2 $ rm serial
pi@rpiGarageOpener:~/junk2 $ echo 01 > ca-serial
pi@rpiGarageOpener:~/junk2 $ ls
ca-certs.sh  ca-index.txt  ca-serial  certs2.sh  old  private-data.sh
pi@rpiGarageOpener:~/junk2 $ rm ca-serial
pi@rpiGarageOpener:~/junk2 $ nano ca-certs.sh
pi@rpiGarageOpener:~/junk2 $ ls /etc/ssl/certs
 02265526.0                                                      COMODO_Certification_Authority.pem
 03179a64.0                                                      COMODO_ECC_Certification_Authority.pem
 062cdee6.0                                                      COMODO_RSA_Certification_Authority.pem
 064e0aa9.0                                                      Cybertrust_Global_Root.pem
 06dc52d5.0                                                      d4dae3dd.0
 080911ac.0                                                      d6325660.0
 09789157.0                                                      d7e8dc79.0
 0a775a30.0                                                      d853d49e.0
 0b1b94ef.0                                                      dc4d6a89.0
 0bf05006.0                                                      dd8e9d41.0
 0c4c9b6c.0                                                      de6d66f3.0
 0f5dc4f3.0                                                      def36a68.0
 0f6fa695.0                                                      DigiCert_Assured_ID_Root_CA.pem
 1001acf7.0                                                      DigiCert_Assured_ID_Root_G2.pem
 106f3e4d.0                                                      DigiCert_Assured_ID_Root_G3.pem
 128805a3.0                                                      DigiCert_Global_Root_CA.pem
 14bc7599.0                                                      DigiCert_Global_Root_G2.pem
 1636090b.0                                                      DigiCert_Global_Root_G3.pem
 18856ac4.0                                                      DigiCert_High_Assurance_EV_Root_CA.pem
 1d3472b9.0                                                      DigiCert_Trusted_Root_G4.pem
 1e08bfd1.0                                                      DST_Root_CA_X3.pem
 1e09d511.0                                                      D-TRUST_Root_Class_3_CA_2_2009.pem
 244b5494.0                                                      D-TRUST_Root_Class_3_CA_2_EV_2009.pem
 2923b3f9.0                                                      e113c810.0
 2ae6433e.0                                                      e18bfb83.0
 2b349938.0                                                      e36a6752.0
 2e5ac55d.0                                                      e73d606e.0
 32888f65.0                                                      e8de2f56.0
 349f2832.0                                                      EC-ACC.pem
 3513523f.0                                                      ee64a828.0
 3bde41ac.0                                                      EE_Certification_Centre_Root_CA.pem
 3e44d2f7.0                                                      eed8c118.0
 3e45d192.0                                                      ef954a4e.0
 40193066.0                                                      emSign_ECC_Root_CA_-_C3.pem
 4042bcee.0                                                      emSign_ECC_Root_CA_-_G3.pem
 40547a79.0                                                      emSign_Root_CA_-_C1.pem
 406c9bb1.0                                                      emSign_Root_CA_-_G1.pem
 4304c5e5.0                                                      Entrust.net_Premium_2048_Secure_Server_CA.pem
 48bec511.0                                                      Entrust_Root_Certification_Authority_-_EC1.pem
 4a6481c9.0                                                      Entrust_Root_Certification_Authority_-_G2.pem
 4b718d9b.0                                                      Entrust_Root_Certification_Authority_-_G4.pem
 4bfab552.0                                                      Entrust_Root_Certification_Authority.pem
 4f316efb.0                                                      ePKI_Root_Certification_Authority.pem
 5273a94c.0                                                      E-Tugra_Certification_Authority.pem
 5443e9e3.0                                                      f081611a.0
 54657681.0                                                      f0c70a8d.0
 57bcb2da.0                                                      f30dd6ad.0
 5a4d6896.0                                                      f3377b1b.0
 5ad8a5d6.0                                                      f387163d.0
 5c44d531.0                                                      f39fc864.0
 5cd81ad7.0                                                      f51bb24c.0
 5d3033c5.0                                                      fc5a8f99.0
 5e98733a.0                                                      fe8a2cd8.0
 5f15c80c.0                                                      ff34af3f.0
 607986c7.0                                                      GDCA_TrustAUTH_R5_ROOT.pem
 626dceaf.0                                                      GeoTrust_Universal_CA_2.pem
 6410666e.0                                                      Global_Chambersign_Root_-_2008.pem
 653b494a.0                                                      GlobalSign_ECC_Root_CA_-_R4.pem
 68dd7389.0                                                      GlobalSign_ECC_Root_CA_-_R5.pem
 6b99d060.0                                                      GlobalSign_Root_CA.pem
 6d41d539.0                                                      GlobalSign_Root_CA_-_R2.pem
 6fa5da56.0                                                      GlobalSign_Root_CA_-_R3.pem
 706f604c.0                                                      GlobalSign_Root_CA_-_R6.pem
 749e9e03.0                                                      Go_Daddy_Class_2_CA.pem
 75d1b2ed.0                                                      Go_Daddy_Root_Certificate_Authority_-_G2.pem
 76cb8f92.0                                                      GTS_Root_R1.pem
 76faf6c0.0                                                      GTS_Root_R2.pem
 7719f463.0                                                      GTS_Root_R3.pem
 773e07ad.0                                                      GTS_Root_R4.pem
 797abab6                                                        Hellenic_Academic_and_Research_Institutions_ECC_RootCA_2015.pem
 7aaf71c0.0                                                      Hellenic_Academic_and_Research_Institutions_RootCA_2011.pem
 7f3d5d1d.0                                                      Hellenic_Academic_and_Research_Institutions_RootCA_2015.pem
 8160b96c.0                                                      Hongkong_Post_Root_CA_1.pem
 8867006a.0                                                      Hongkong_Post_Root_CA_3.pem
 8cb5ee0f.0                                                      IdenTrust_Commercial_Root_CA_1.pem
 8d86cdd1.0                                                      IdenTrust_Public_Sector_Root_CA_1.pem
 930ac5d2.0                                                      iphone.pem
 93bc0acc.0                                                      ISRG_Root_X1.pem
 988a38cb.0                                                      Izenpe.com.pem
 9c2e7d30.0                                                      LuxTrust_Global_Root_2.pem
 9c8dfbd4.0                                                      Microsec_e-Szigno_Root_CA_2009.pem
 9d04f354.0                                                     'NetLock_Arany_=Class_Gold=_Főtanúsítvány.pem'
 a3418fda.0                                                      Network_Solutions_Certificate_Authority.pem
 a94d09e5.0                                                      OISTE_WISeKey_Global_Root_GA_CA.pem
 ACCVRAIZ1.pem                                                   OISTE_WISeKey_Global_Root_GB_CA.pem
 AC_RAIZ_FNMT-RCM.pem                                            OISTE_WISeKey_Global_Root_GC_CA.pem
 Actalis_Authentication_Root_CA.pem                              QuoVadis_Root_CA_1_G3.pem
 aee5f10d.0                                                      QuoVadis_Root_CA_2_G3.pem
 AffirmTrust_Commercial.pem                                      QuoVadis_Root_CA_2.pem
 AffirmTrust_Networking.pem                                      QuoVadis_Root_CA_3_G3.pem
 AffirmTrust_Premium_ECC.pem                                     QuoVadis_Root_CA_3.pem
 AffirmTrust_Premium.pem                                         QuoVadis_Root_CA.pem
 Amazon_Root_CA_1.pem                                            Secure_Global_CA.pem
 Amazon_Root_CA_2.pem                                            SecureSign_RootCA11.pem
 Amazon_Root_CA_3.pem                                            SecureTrust_CA.pem
 Amazon_Root_CA_4.pem                                            Security_Communication_RootCA2.pem
 Atos_TrustedRoot_2011.pem                                       Security_Communication_Root_CA.pem
 Autoridad_de_Certificacion_Firmaprofesional_CIF_A62634068.pem   Sonera_Class_2_Root_CA.pem
 b0e59380.0                                                      ssl-cert-snakeoil.pem
 b1159c4c.0                                                      SSL.com_EV_Root_Certification_Authority_ECC.pem
 b1b8a7f3.0                                                      SSL.com_EV_Root_Certification_Authority_RSA_R2.pem
 b66938e9.0                                                      SSL.com_Root_Certification_Authority_ECC.pem
 b727005e.0                                                      SSL.com_Root_Certification_Authority_RSA.pem
 b7a5b843.0                                                      Staat_der_Nederlanden_EV_Root_CA.pem
 Baltimore_CyberTrust_Root.pem                                   Staat_der_Nederlanden_Root_CA_-_G2.pem
 Buypass_Class_2_Root_CA.pem                                     Staat_der_Nederlanden_Root_CA_-_G3.pem
 Buypass_Class_3_Root_CA.pem                                     Starfield_Class_2_CA.pem
 c01eb047.0                                                      Starfield_Root_Certificate_Authority_-_G2.pem
 c0ff1f52.0                                                      Starfield_Services_Root_Certificate_Authority_-_G2.pem
 c28a8a30.0                                                      SwissSign_Gold_CA_-_G2.pem
 c47d9980.0                                                      SwissSign_Silver_CA_-_G2.pem
 ca6e4ad9.0                                                      SZAFIR_ROOT_CA2.pem
 ca-certificates.crt                                             Taiwan_GRCA.pem
 cacert.pem                                                      TeliaSonera_Root_CA_v1.pem
 cacert.pem.backup                                               TrustCor_ECA-1.pem
 CA_Disig_Root_R2.pem                                            TrustCor_RootCert_CA-1.pem
 cbf06781.0                                                      TrustCor_RootCert_CA-2.pem
 cc450945.0                                                      Trustis_FPS_Root_CA.pem
 cd58d51e.0                                                      T-TeleSec_GlobalRoot_Class_2.pem
 cd8c0d63.0                                                      T-TeleSec_GlobalRoot_Class_3.pem
 ce5e74ef.0                                                      TUBITAK_Kamu_SM_SSL_Kok_Sertifikasi_-_Surum_1.pem
 Certigna.pem                                                    TWCA_Global_Root_CA.pem
 Certigna_Root_CA.pem                                            TWCA_Root_Certification_Authority.pem
 certSIGN_ROOT_CA.pem                                            UCA_Extended_Validation_Root.pem
 Certum_Trusted_Network_CA_2.pem                                 UCA_Global_G2_Root.pem
 Certum_Trusted_Network_CA.pem                                   USERTrust_ECC_Certification_Authority.pem
 CFCA_EV_ROOT.pem                                                USERTrust_RSA_Certification_Authority.pem
 Chambers_of_Commerce_Root_-_2008.pem                            Verisign_Class_3_Public_Primary_Certification_Authority_-_G3.pem
 Comodo_AAA_Services_root.pem                                    XRamp_Global_CA_Root.pem
pi@rpiGarageOpener:~/junk2 $ ls /etc/ssl/certs | grep cacert
cacert.pem
cacert.pem.backup
pi@rpiGarageOpener:~/junk2 $ ls /etc/ssl/private
ls: cannot open directory '/etc/ssl/private': Permission denied
pi@rpiGarageOpener:~/junk2 $ sudo ls /etc/ssl/private
cacert.key  cacert.key.backup  ssl-cert-snakeoil.key
pi@rpiGarageOpener:~/junk2 $ nano certs2.sh
pi@rpiGarageOpener:~/junk2 $ cp certs2.sh certs3.sh
pi@rpiGarageOpener:~/junk2 $ nano certs3.sh
pi@rpiGarageOpener:~/junk2 $ nano certs3.sh
pi@rpiGarageOpener:~/junk2 $ nano certs3.sh
pi@rpiGarageOpener:~/junk2 $ nano /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk2 $ nano /etc/ssl/openssl2.cnf
pi@rpiGarageOpener:~/junk2 $ ls
ca-certs.sh  certs2.sh  certs3.sh  certs.sh  glenhollow.duckdns.org.csr  old  private-data.sh
pi@rpiGarageOpener:~/junk2 $ nano certs2.sh
pi@rpiGarageOpener:~/junk2 $ sudo bash certs2.sh
starting script

   generating CA

openssl genrsa -aes256 -passout pass:h0medep0t -out ca-pass.key 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
.................................++++
..............++++
e is 65537 (0x010001)

openssl rsa -passin pass:h0medep0t -in ca-pass.key -out /etc/ssl/private/cacert.key
writing RSA key

rm ca-pass.key

openssl req -new -x509 -days 3650 -key /etc/ssl/private/ca.key -out /etc/ssl/certs/ca.pem, taking 7 defaults from /etc/ssl/openssl.cnf
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [US]:State or Province Name (full name) [Texas]:Locality Name (eg, city) [Cedar Park]:Organization Name (eg, company) [Cartwright]:Organizational Unit Name (eg, section) [Jeff]:Common Name (e.g. server FQDN or YOUR name) [glenhollow.duckdns.org]:Email Address [310glenhollow@gmail.com]:

   listing created CA files:
-rw------- 1 root root 3243 Jan  1 14:59 /etc/ssl/private/cacert.key
-rw-r--r-- 1 root root 2208 Jan  1 14:59 /etc/ssl/certs/cacert.pem

   creating user cert

openssl genrsa -aes256 -passout pass:h0medep0t -out glenhollow.duckdns.org-pass.key 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
......++++
.............++++
e is 65537 (0x010001)


openssl rsa -passin pass:h0medep0t -in glenhollow.duckdns.org-pass.key -out /etc/ssl/private/glenhollow.duckdns.org.key
writing RSA key

rm glenhollow.duckdns.org-pass.key

openssl req -new -key /etc/ssl/private/glenhollow.duckdns.org.key -out glenhollow.duckdns.org.csr, taking 9 defaults from /etc/ssl/openssl.cnf
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [US]:State or Province Name (full name) [Texas]:Locality Name (eg, city) [Cedar Park]:Organization Name (eg, company) [Cartwright]:Organizational Unit Name (eg, section) [Jeff]:Common Name (e.g. server FQDN or YOUR name) [glenhollow.duckdns.org]:Email Address [310glenhollow@gmail.com]:
Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password [h0medep0t]:An optional company name []:

openssl x509 -req -days 3650 -in glenhollow.duckdns.org.csr -CA /etc/ssl/certs/ca.pem -CAkey /etc/ssl/private/cacert.key -set_serial 01 -out /etc/ssl/certs/glenhollow.duckdns.org.pem
Signature ok
subject=C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff, CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com
Getting CA Private Key


   create full pem - cannot do this because key is not PEM format

cat /etc/ssl/certs/glenhollow.duckdns.org.pem /etc/ssl/certs/cacert.pem > /etc/ssl/certs/glenhollow.duckdns.org-full.pem

openssl pkcs12 -export -out glenhollow.duckdns.org.p12 -inkey /etc/ssl/private/glenhollow.duckdns.org.key -in /etc/ssl/certs/glenhollow.duckdns.org.pem -certfile /etc/ssl/certs/cacert.pem
Enter Export Password:
Verifying - Enter Export Password:

chmod +r glenhollow.duckdns.org.p12

glenhollow.duckdns.org.p12 /home/pi/.
C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff, CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com
error 18 at 0 depth lookup: self signed certificate
error /etc/ssl/certs/glenhollow.duckdns.org.pem: verification failed
pi@rpiGarageOpener:~/junk2 $ ls /etc/ssl/
certs            crl        garage-door-server.key  newcerts      openssl.cnf         private                            serial
certscacert.pem  crlnumber  index.txt               openssl2.cnf  openssl.cnf.backup  privateglenhollow.duckdns.org.key
pi@rpiGarageOpener:~/junk2 $ cp /etc/ssl/openssl2.cnf /etc/ssl/openssl.cnf
cp: cannot create regular file '/etc/ssl/openssl.cnf': Permission denied
pi@rpiGarageOpener:~/junk2 $ sudo cp /etc/ssl/openssl2.cnf /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk2 $ sudo nano /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk2 $ 
pi@rpiGarageOpener:~/junk2 $ 
pi@rpiGarageOpener:~/junk2 $ 
pi@rpiGarageOpener:~/junk2 $ cd ..
pi@rpiGarageOpener:~ $ mkdir junk4
pi@rpiGarageOpener:~ $ cd junk4
pi@rpiGarageOpener:~/junk4 $ openssl genrsa -aes256 -passout pass:xxxx -out ca.pass.key 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
......................++++
................................................................++++
e is 65537 (0x010001)
pi@rpiGarageOpener:~/junk4 $ openssl rsa -passin pass:xxxx -in ca.pass.key -out ca.key
writing RSA key
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pass.key
pi@rpiGarageOpener:~/junk4 $ openssl req -new -x509 -days 3650 -key ca.key -out ca.pem
Error Loading extension section v3_ca
3069603856:error:22097082:X509 V3 routines:do_ext_nconf:unknown extension name:../crypto/x509v3/v3_conf.c:78:
3069603856:error:22098080:X509 V3 routines:X509V3_EXT_nconf:error in extension:../crypto/x509v3/v3_conf.c:47:name=commonName_default, value=cacert
pi@rpiGarageOpener:~/junk4 $ sudo nano /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ ls /etc/ssl
certs            crl        garage-door-server.key  newcerts      openssl.cnf         private                            serial
certscacert.pem  crlnumber  index.txt               openssl2.cnf  openssl.cnf.backup  privateglenhollow.duckdns.org.key
pi@rpiGarageOpener:~/junk4 $ sudo nano openssl.cnf.backup
pi@rpiGarageOpener:~/junk4 $ sudo cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pass.key
pi@rpiGarageOpener:~/junk4 $ sudo nano /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk4 $ nano ca.sh
pi@rpiGarageOpener:~/junk4 $ sudo bash ca.sh
Generating RSA private key, 4096 bit long modulus (2 primes)
..............................................................................................................................++++
.........++++
e is 65537 (0x010001)
writing RSA key
ca.sh: line 10: unexpected EOF while looking for matching `"'
ca.sh: line 11: syntax error: unexpected end of file
pi@rpiGarageOpener:~/junk4 $ nano ca.sh
pi@rpiGarageOpener:~/junk4 $ sudo bash ca.sh
Generating RSA private key, 4096 bit long modulus (2 primes)
....................................................++++
................................++++
e is 65537 (0x010001)
writing RSA key
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pem  ca.sh
pi@rpiGarageOpener:~/junk4 $ nano c.sh
pi@rpiGarageOpener:~/junk4 $ nano c.sh
pi@rpiGarageOpener:~/junk4 $ nano ca.sh
pi@rpiGarageOpener:~/junk4 $ nano c.sh
pi@rpiGarageOpener:~/junk4 $ sudo bash c.sh
Generating RSA private key, 4096 bit long modulus (2 primes)
..............................................................++++
.........................................................................................++++
e is 65537 (0x010001)
writing RSA key
x509: Unrecognized flag subj
x509: Use -help for summary.
pi@rpiGarageOpener:~/junk4 $ nano c.sh
pi@rpiGarageOpener:~/junk4 $ nano c.sh
pi@rpiGarageOpener:~/junk4 $ sudo bash c.sh
Generating RSA private key, 4096 bit long modulus (2 primes)
.........................................................................................++++
......................................................................++++
e is 65537 (0x010001)
writing RSA key
Signature ok
subject=CN = glenhollow.duckdns.org, emailAddress = glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
Getting CA Private Key
Enter Export Password:
Verifying - Enter Export Password:
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pem  ca.sh  c.sh  Jeff-iPhone.csr  Jeff-iPhone.full.pfx  Jeff-iPhone.key  Jeff-iPhone.pem
pi@rpiGarageOpener:~/junk4 $ sudo nano /etc/apache2/sites-available/default-ssl.conf
pi@rpiGarageOpener:~/junk4 $ sudo nano /etc/apache2/sites-available/default-ssl.conf
pi@rpiGarageOpener:~/junk4 $ sudo systemctl restart apache2
pi@rpiGarageOpener:~/junk4 $ sudo apache2ctl configtest
Syntax OK
pi@rpiGarageOpener:~/junk4 $ sudo systemctl reload apache2
pi@rpiGarageOpener:~/junk4 $ sudo service apache2 restart
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pem  ca.sh  c.sh  Jeff-iPhone.csr  Jeff-iPhone.full.pfx  Jeff-iPhone.key  Jeff-iPhone.pem
pi@rpiGarageOpener:~/junk4 $ cp *.pfx ../.
pi@rpiGarageOpener:~/junk4 $ ls ..
api           ca-serial          Desktop      genID.py        glenhollow.duckdns.org-client.p12  junk      Pictures             rest_server.log   Templates      Videos
Bookshelf     certs.sh           Documents    getAPI.sh       glenhollow.duckdns.org.p12         junk2     private-data.sh      rpi-echo.log      tls2.sh
cacert.pem    check_apache.html  Downloads    getScripts2.sh  hello.py                           junk4     Public               rpi-echo.service  tls.sh
ca-certs.sh   createDB.sh        emailTry.py  getScripts.sh   iphone.full.pfx                    Music     pushGarageRemote.py  simple-fan.py     tmp.txt
ca-index.txt  dead.letter        garage.log   getWebsite.sh   Jeff-iPhone.full.pfx               myID.txt  read.py              simple-fan.py.1   unused_rpi.sh
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pem  ca.sh  c.sh  Jeff-iPhone.csr  Jeff-iPhone.full.pfx  Jeff-iPhone.key  Jeff-iPhone.pem
pi@rpiGarageOpener:~/junk4 $ nano ca.sh
pi@rpiGarageOpener:~/junk4 $ nano c.sh

pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ cp Jeff-iPhone.full.pfx ../01-Jeff-iPhone-full.pfx
pi@rpiGarageOpener:~/junk4 $ apachectl –M | grep ssl
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
pi@rpiGarageOpener:~/junk4 $ apachectl –M 
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
Action '–M' failed.
The Apache error log may have more information.
pi@rpiGarageOpener:~/junk4 $ apachectl –t -D
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
Action '–t -D' failed.
The Apache error log may have more information.
pi@rpiGarageOpener:~/junk4 $ apachectl –M *
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
Action '–M ca.key ca.pem ca.sh c.sh Jeff-iPhone.csr Jeff-iPhone.full.pfx Jeff-iPhone.key Jeff-iPhone.pem' failed.
The Apache error log may have more information.
pi@rpiGarageOpener:~/junk4 $ apachectl –M all
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
Action '–M all' failed.
The Apache error log may have more information.
pi@rpiGarageOpener:~/junk4 $ apachectl –l
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
Action '–l' failed.
The Apache error log may have more information.
pi@rpiGarageOpener:~/junk4 $ sudo apachectl –l
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
Action '–l' failed.
The Apache error log may have more information.
pi@rpiGarageOpener:~/junk4 $ which apachectl
/usr/sbin/apachectl
pi@rpiGarageOpener:~/junk4 $ man apachectl
pi@rpiGarageOpener:~/junk4 $ apache2ctl –M | grep ssl
Usage: /usr/sbin/apache2 [-D name] [-d directory] [-f file]
                         [-C "directive"] [-c "directive"]
                         [-k start|restart|graceful|graceful-stop|stop]
                         [-v] [-V] [-h] [-l] [-L] [-t] [-T] [-S] [-X]
Options:
  -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  -e level           : show startup errors of level (see LogLevel)
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  -L                 : list available configuration directives
  -t -D DUMP_VHOSTS  : show parsed vhost settings
  -t -D DUMP_RUN_CFG : show parsed run settings
  -S                 : a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  -t -D DUMP_INCLUDES: show all included configuration files
  -t                 : run syntax check for config files
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)
pi@rpiGarageOpener:~/junk4 $ history | grep openssl | grep cnf
  340  sudo rm /etc/ssl/openssl.cnf.backup
  555  mv openssl.cnf old/.
  637  sudo nano /etc/ssl/openssl.cnf
  660  cat /etc/ssl/openssl.cnf
  661  sudo nano /etc/ssl/openssl.cnf
  664  cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  665  sudo cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  666  sudo nano /etc/ssl/openssl.cnf
  680  cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  681  sudo cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  726  sudo ls -l /etc/ssl/openssl.cnf
  749  nano /etc/ssl/openssl.cnf
  750  nano /etc/ssl/openssl2.cnf
  755  cp /etc/ssl/openssl2.cnf /etc/ssl/openssl.cnf
  756  sudo cp /etc/ssl/openssl2.cnf /etc/ssl/openssl.cnf
  757  sudo nano /etc/ssl/openssl.cnf
  765  sudo nano /etc/ssl/openssl.cnf
  767  sudo nano openssl.cnf.backup
  768  sudo cp /etc/ssl/openssl.cnf.backup /etc/ssl/openssl.cnf
  770  sudo nano /etc/ssl/openssl.cnf
  805  history | grep openssl | grep cnf
pi@rpiGarageOpener:~/junk4 $ sudo nano /etc/ssl/openssl.cnf
pi@rpiGarageOpener:~/junk4 $ history | grep nano | grep apache
   82  sudo nano /etc/apache2/apache2.conf
   83  sudo nano /etc/apache2/conf-enabled/*.conf
   84  sudo nano /etc/apache2/sites-enabled/*.conf
  116  sudo nano /etc/apache2/ports.conf
  150  sudo nano /etc/apache2/ports.conf
  783  sudo nano /etc/apache2/sites-available/default-ssl.conf
  807  history | grep nano | grep apache
pi@rpiGarageOpener:~/junk4 $ sudo nano /etc/apache2/sites-available/default-ssl.conf
pi@rpiGarageOpener:~/junk4 $ sudo a2enmod ssl 
Considering dependency setenvif for ssl:
Module setenvif already enabled
Considering dependency mime for ssl:
Module mime already enabled
Considering dependency socache_shmcb for ssl:
Module socache_shmcb already enabled
Module ssl already enabled
pi@rpiGarageOpener:~/junk4 $ sudo a2ensite default-ssl
Site default-ssl already enabled
pi@rpiGarageOpener:~/junk4 $ sudo a2dissite default
ERROR: Site default does not exist!
pi@rpiGarageOpener:~/junk4 $ $ sudo systemctl restart apache2
-bash: $: command not found
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ sudo systemctl restart apache2
pi@rpiGarageOpener:~/junk4 $ sudo apache2ctl configtest
Syntax OK
pi@rpiGarageOpener:~/junk4 $ sudo systemctl reload apache2
pi@rpiGarageOpener:~/junk4 $ sudo service apache2 restart
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pem  ca.sh  c.sh  Jeff-iPhone.csr  Jeff-iPhone.full.pfx  Jeff-iPhone.key  Jeff-iPhone.pem
pi@rpiGarageOpener:~/junk4 $ cat c.sh
# client_id is *only* for the output filenames
# incrementing the serial number is important
CLIENT_ID="Jeff-iPhone"
CLIENT_SERIAL=01

# rsa
openssl genrsa -aes256 -passout pass:xxxx -out ${CLIENT_ID}.pass.key 4096

openssl rsa -passin pass:xxxx -in ${CLIENT_ID}.pass.key -out ${CLIENT_ID}.key

rm ${CLIENT_ID}.pass.key

# req takes -config and -subj
openssl req -new -key ${CLIENT_ID}.key -out ${CLIENT_ID}.csr -subj "/CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"

# issue this certificate, signed by the CA root we made in the previous section
openssl x509 -req -days 3650 -in ${CLIENT_ID}.csr -CA ca.pem -CAkey ca.key -set_serial ${CLIENT_SERIAL} -out ${CLIENT_ID}.pem

openssl pkcs12 -export -inkey ${CLIENT_ID}.key -in ${CLIENT_ID}.pem -certfile ca.pem -out ${CLIENT_ID}.full.pfx
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pem  ca.sh  c.sh  Jeff-iPhone.csr  Jeff-iPhone.full.pfx  Jeff-iPhone.key  Jeff-iPhone.pem
pi@rpiGarageOpener:~/junk4 $ history | grep nano | grep apache
   82  sudo nano /etc/apache2/apache2.conf
   83  sudo nano /etc/apache2/conf-enabled/*.conf
   84  sudo nano /etc/apache2/sites-enabled/*.conf
  116  sudo nano /etc/apache2/ports.conf
  150  sudo nano /etc/apache2/ports.conf
  783  sudo nano /etc/apache2/sites-available/default-ssl.conf
  807  history | grep nano | grep apache
  808  sudo nano /etc/apache2/sites-available/default-ssl.conf
  820  history | grep nano | grep apache
pi@rpiGarageOpener:~/junk4 $ sudo nano /etc/apache2/sites-available/default-ssl.conf
pi@rpiGarageOpener:~/junk4 $ sudo service apache2 restart 
pi@rpiGarageOpener:~/junk4 $ sudo systemctl restart apache2
pi@rpiGarageOpener:~/junk4 $ sudo apache2ctl configtest
Syntax OK
pi@rpiGarageOpener:~/junk4 $ sudo systemctl reload apache2
pi@rpiGarageOpener:~/junk4 $ sudo service apache2 restart
pi@rpiGarageOpener:~/junk4 $ nano ../certs.sh
pi@rpiGarageOpener:~/junk4 $ openssl pkcs12 -export -inkey $CLIENTKEYFILE -in $CLIENTCERTFILE -out $CLIENTP12
pkcs12: Option -out needs a value
pkcs12: Use -help for summary.
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ 
pi@rpiGarageOpener:~/junk4 $ ls
ca.key  ca.pem  ca.sh  c.sh  Jeff-iPhone.csr  Jeff-iPhone.full.pfx  Jeff-iPhone.key  Jeff-iPhone.pem
pi@rpiGarageOpener:~/junk4 $ nano ca.sh
pi@rpiGarageOpener:~/junk4 $ nano ca.sh
pi@rpiGarageOpener:~/junk4 $ nano ca.sh
pi@rpiGarageOpener:~/this-works $ sudo bash ca.sh

# defines values for private data that should not be shared
source private-data.sh
#!/bin/bash

#  this file includes private-data that should not be published or shared

#   **** DO NOT PUBLISH ITEMS BELOW ****
#
#   Replace values below in angle brackets with your values
#
COUNTRY="US"
STATE="Texas"
CITY="Cedar Park"
LASTNAME="Cartwright"
FIRSTNAME="Jeff"
EMAIL="310glenhollow@gmail.com"
CERTPASSWORD="h0medep0t"

# Array of Common Names that could be used to access server
# For example: serverName, serverName.local, serverName.duckdns.org
COMMONNAME=("glenhollow.duckdns.org")
CANAME="cacert"

PEMPSWD="homedep0tpem"

#
#   Replace values above in angle brackets with your values
#
#   **** DO NOT PUBLISH ITEMS ABOVE ****


echo

echo "Generate Certtificate Authority cert and key"
Generate Certtificate Authority cert and key
echo "   prompts for PEM Pass Phrase"
   prompts for PEM Pass Phrase
openssl req -new -x509 -days 3650 -keyout ca-key.pem -out ca-crt.pem -passin 'pass:$PEMPSWD' -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"
Generating a RSA private key
....................+++++
..............................................+++++
writing new private key to 'ca-key.pem'
Enter PEM pass phrase:
Enter PEM pass phrase:
Enter PEM pass phrase:
Enter PEM pass phrase:
3069845520:error:0906406D:PEM routines:PEM_def_callback:problems getting password:../crypto/pem/pem_lib.c:59:
3069845520:error:0907E06F:PEM routines:do_pk8pkey:read key:../crypto/pem/pem_pk8.c:83:

# PEM Pass Phrase
# Country, State ...
# Common Name (e.g. server FQDN or YOUR name) []:glenhollow.duckdns.org
#Email Address []:310glenhollow@gmail.com

# outputs:
#   ca-crt.pem  ca-key.pem


# instructables
# sudo openssl req -newkey rsa:4096 -keyform PEM -keyout ca.key -x509 -days 3650 -outform PEM -out ca.cer

# openssl req -config $CONFFILE -new -x509 -days $DAYS -keyform PEM -keyout $KEYFILE -outform PEM -out $CERTFILE -subj "/CN=cacert/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"

pi@rpiGarageOpener:~/this-works $ ^C
pi@rpiGarageOpener:~/this-works $ sudo bash ca.sh

# defines values for private data that should not be shared
source private-data.sh
#!/bin/bash

#  this file includes private-data that should not be published or shared

#   **** DO NOT PUBLISH ITEMS BELOW ****
#
#   Replace values below in angle brackets with your values
#
COUNTRY="US"
STATE="Texas"
CITY="Cedar Park"
LASTNAME="Cartwright"
FIRSTNAME="Jeff"
EMAIL="310glenhollow@gmail.com"
CERTPASSWORD="h0medep0t"

# Array of Common Names that could be used to access server
# For example: serverName, serverName.local, serverName.duckdns.org
COMMONNAME=("glenhollow.duckdns.org")
CANAME="cacert"

PEMPSWD="homedep0tpem"

#
#   Replace values above in angle brackets with your values
#
#   **** DO NOT PUBLISH ITEMS ABOVE ****


echo

echo "Generate Certtificate Authority cert and key"
Generate Certtificate Authority cert and key
echo "   prompts for PEM Pass Phrase"
   prompts for PEM Pass Phrase
openssl req -new -x509 -days 3650 -keyout ca-key.pem -out ca-crt.pem -passout 'pass:$PEMPSWD' -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"
Generating a RSA private key
............................+++++
......................+++++
writing new private key to 'ca-key.pem'
-----

# PEM Pass Phrase
# Country, State ...
# Common Name (e.g. server FQDN or YOUR name) []:glenhollow.duckdns.org
#Email Address []:310glenhollow@gmail.com

# outputs:
#   ca-crt.pem  ca-key.pem


# instructables
# sudo openssl req -newkey rsa:4096 -keyform PEM -keyout ca.key -x509 -days 3650 -outform PEM -out ca.cer

# openssl req -config $CONFFILE -new -x509 -days $DAYS -keyform PEM -keyout $KEYFILE -outform PEM -out $CERTFILE -subj "/CN=cacert/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"

pi@rpiGarageOpener:~/this-works $ ls
apache-restart.sh  ca-crt.pem  ca-key.pem  ca.sh  client.sh  private-data.sh  read.me  server.sh  THIS-WORKS.sh
pi@rpiGarageOpener:~/this-works $ sudo bash ca.sh
set -e

# defines values for private data that should not be shared
source private-data.sh
#!/bin/bash

#  this file includes private-data that should not be published or shared

#   **** DO NOT PUBLISH ITEMS BELOW ****
#
#   Replace values below in angle brackets with your values
#
COUNTRY="US"
STATE="Texas"
CITY="Cedar Park"
LASTNAME="Cartwright"
FIRSTNAME="Jeff"
EMAIL="310glenhollow@gmail.com"
CERTPASSWORD="h0medep0t"

# Array of Common Names that could be used to access server
# For example: serverName, serverName.local, serverName.duckdns.org
COMMONNAME=("glenhollow.duckdns.org")
CANAME="cacert"

PEMPSWD="homedep0tpem"

#
#   Replace values above in angle brackets with your values
#
#   **** DO NOT PUBLISH ITEMS ABOVE ****


CACERTFILE="ca-crt.pem"
CAKEYFILE="ca-key.pem"

# outputs:
#   ca-crt.pem  ca-key.pem
echo

echo "Generate Certtificate Authority cert and key"
Generate Certtificate Authority cert and key
echo "   prompts for PEM Pass Phrase"
   prompts for PEM Pass Phrase
openssl req -new -x509 -days 3650 -keyout $CAKEYFILE -out $CACERTFILE -passout 'pass:$PEMPSWD' -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"
Generating a RSA private key
............................................+++++
...................+++++
writing new private key to 'ca-key.pem'
-----



pi@rpiGarageOpener:~/this-works $ ls -l
total 36
-rw-r--r-- 1 pi   pi    656 Jan  1 21:47 apache-restart.sh
-rw-r--r-- 1 root root 1448 Jan  2 07:10 ca-crt.pem
-rw------- 1 root root 1854 Jan  2 07:10 ca-key.pem
-rw-r--r-- 1 pi   pi    467 Jan  2 07:10 ca.sh
-rw-r--r-- 1 pi   pi    957 Jan  1 21:48 client.sh
-rw-r--r-- 1 pi   pi    648 Jan  2 07:03 private-data.sh
-rw-r--r-- 1 pi   pi    368 Jan  2 06:43 read.me
-rw-r--r-- 1 pi   pi    643 Jan  1 21:45 server.sh
-rw-r--r-- 1 pi   pi   2512 Jan  1 21:40 THIS-WORKS.sh
pi@rpiGarageOpener:~/this-works $ sudo bash ca.sh
set -e

# defines values for private data that should not be shared
source private-data.sh
#!/bin/bash

#  this file includes private-data that should not be published or shared

#   **** DO NOT PUBLISH ITEMS BELOW ****
#
#   Replace values below in angle brackets with your values
#
COUNTRY="US"
STATE="Texas"
CITY="Cedar Park"
LASTNAME="Cartwright"
FIRSTNAME="Jeff"
EMAIL="310glenhollow@gmail.com"
CERTPASSWORD="h0medep0t"

# Array of Common Names that could be used to access server
# For example: serverName, serverName.local, serverName.duckdns.org
COMMONNAME=("glenhollow.duckdns.org")
CANAME="cacert"

PEMPSWD="homedep0tpem"

#
#   Replace values above in angle brackets with your values
#
#   **** DO NOT PUBLISH ITEMS ABOVE ****


CACERTDIR="/home/pi/this-works"=
CACERTFILE="$CACERTDIR/ca-crt.pem"

CAKEYDIR="/home/pi/this-works"
CAKEYFILE="$CAKEYDIR/ca-key.pem"

CADAYS=3650

# outputs:
#   ca-crt.pem  ca-key.pem
echo

echo "Generate Certtificate Authority cert and key"
Generate Certtificate Authority cert and key
echo "   prompts for PEM Pass Phrase"
   prompts for PEM Pass Phrase
openssl req -new -x509 -days $CADAYS -keyout $CAKEYFILE -out $CACERTFILE -passout 'pass:$PEMPSWD' -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"
Generating a RSA private key
.....+++++
..........................................................+++++
writing new private key to '/home/pi/this-works/ca-key.pem'
-----
Can't open /home/pi/this-works=/ca-crt.pem for writing, No such file or directory
3069390864:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('/home/pi/this-works=/ca-crt.pem','w')
3069390864:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
pi@rpiGarageOpener:~/this-works $ sudo bash ca.sh
set -e

# defines values for private data that should not be shared
source private-data.sh
#!/bin/bash

#  this file includes private-data that should not be published or shared

#   **** DO NOT PUBLISH ITEMS BELOW ****
#
#   Replace values below in angle brackets with your values
#
COUNTRY="US"
STATE="Texas"
CITY="Cedar Park"
LASTNAME="Cartwright"
FIRSTNAME="Jeff"
EMAIL="310glenhollow@gmail.com"
CERTPASSWORD="h0medep0t"

# Array of Common Names that could be used to access server
# For example: serverName, serverName.local, serverName.duckdns.org
COMMONNAME=("glenhollow.duckdns.org")
CANAME="cacert"

PEMPSWD="homedep0tpem"

#
#   Replace values above in angle brackets with your values
#
#   **** DO NOT PUBLISH ITEMS ABOVE ****


CACERTDIR="/home/pi/this-works"
CACERTFILE="$CACERTDIR/ca-crt.pem"

CAKEYDIR="/home/pi/this-works"
CAKEYFILE="$CAKEYDIR/ca-key.pem"

CADAYS=3650

# outputs:
#   ca-crt.pem  ca-key.pem
echo

echo "Generate Certtificate Authority cert and key"
Generate Certtificate Authority cert and key
echo "   prompts for PEM Pass Phrase"
   prompts for PEM Pass Phrase
openssl req -new -x509 -days $CADAYS -keyout $CAKEYFILE -out $CACERTFILE -passout 'pass:$PEMPSWD' -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"
Generating a RSA private key
..............................................................................................................+++++
....+++++
writing new private key to '/home/pi/this-works/ca-key.pem'
-----



pi@rpiGarageOpener:~/this-works $ sudo bash ca.sh

Generate Certtificate Authority cert and key
   prompts for PEM Pass Phrase
$ openssl req -new -x509 -days 3650 -keyout /home/pi/this-works/ca-key.pem -out /home/pi/this-works/ca-crt.pem -passout 'pass:homedep0tpem' -subj "/CN=cacert/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
Generating a RSA private key
......................................................................................................................................................+++++
...........................................................................................+++++
writing new private key to '/home/pi/this-works/ca-key.pem'
-----
pi@rpiGarageOpener:~/this-works $ sudo bash ca-caerts.sh
bash: ca-caerts.sh: No such file or directory
pi@rpiGarageOpener:~/this-works $ sudo bash ca-certs.sh
Starting Certificate Authority Script
No CA files found.

Generate Certtificate Authority cert and key
   prompts for PEM Pass Phrase
$ openssl req -new -x509 -days 3650 -keyout /ca-key.pem -out /ca-crt.pem -passout 'pass:homedep0tpem' -subj "/CN=/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
Generating a RSA private key
....................................+++++
.............................................................................................................................................+++++
writing new private key to '/ca-key.pem'
-----
req: No value provided for Subject Attribute CN, skipped

SUCCESS: Exiting Certificate Authority Script
pi@rpiGarageOpener:~/this-works $ sudo bash ca-certs.sh
Starting Certificate Authority Script
CA cert file (/ca-crt.pem) exists.
    /home/pi/certs directory exists

Generate Certtificate Authority cert and key
   prompts for PEM Pass Phrase
$ openssl req -new -x509 -days 3650 -keyout /home/pi/certs/ca-key.pem -out /ca-crt.pem -passout 'pass:homedep0tpem' -subj "/CN=cacert/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
Generating a RSA private key
..................................+++++
................................................................+++++
writing new private key to '/home/pi/certs/ca-key.pem'
-----

SUCCESS: Exiting Certificate Authority Script
pi@rpiGarageOpener:~/this-works $ ls -l ../certs
total 4
-rw------- 1 root root 1854 Jan  2 07:50 ca-key.pem
pi@rpiGarageOpener:~/this-works $ sudo bash ca-certs.sh
Starting Certificate Authority Script
No CA files found.
    /home/pi/certs directory exists

Generate Certtificate Authority cert and key
   prompts for PEM Pass Phrase
$ openssl req -new -x509 -days 3650 -keyout /home/pi/certs/ca-key.pem -out /home/pi/certs/ca-crt.pem -passout 'pass:homedep0tpem' -subj "/CN=cacert/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
Generating a RSA private key
..............+++++
................+++++
writing new private key to '/home/pi/certs/ca-key.pem'
-----

SUCCESS: Exiting Certificate Authority Script
pi@rpiGarageOpener:~/this-works $ mkdir certs # the directory should match value for MYCERTS in private-data.sh
pi@rpiGarageOpener:~/this-works $ ls
apache-restart.sh  ca-certs.sh  ca-crt.pem  ca-key.pem  certs  client.sh  private-data.sh  read.me  server.sh  THIS-WORKS.sh
pi@rpiGarageOpener:~/this-works $ ls certs
pi@rpiGarageOpener:~/this-works $ rmdir certs
pi@rpiGarageOpener:~/this-works $ ls
apache-restart.sh  ca-certs.sh  ca-crt.pem  ca-key.pem  client.sh  private-data.sh  read.me  server.sh  THIS-WORKS.sh
pi@rpiGarageOpener:~/this-works $ sudo bash ca-certs.sh
Starting Certificate Authority Script
CA cert file (/home/pi/certs/ca-crt.pem) exists.
CA key file (/home/pi/certs/ca-key.pem) exists.

The CA files were created. Do you want to continue? y

Generate Certtificate Authority cert and key
   prompts for PEM Pass Phrase
$ openssl req -new -x509 -days 3650 -keyout /home/pi/certs/ca-key.pem -out /home/pi/certs/ca-crt.pem -passout 'pass:homedep0tpem' -subj "/CN=cacert/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
Generating a RSA private key
.....................+++++
...................+++++
writing new private key to '/home/pi/certs/ca-key.pem'
-----

   values that may be needed for other guides
     PEM Pass Phrase = homedep0tpem
     Common Name for CA = cacert

     Directory for cert files = 
       CA Cert File = /home/pi/certs/ca-crt.pem
       CA KEY File = /home/pi/certs/ca-key.pem

SUCCESS: Exiting Certificate Authority Script
pi@rpiGarageOpener:~/this-works $ ls -l ../certs
total 8
-rw-r--r-- 1 root root 1448 Jan  2 08:22 ca-crt.pem
-rw------- 1 root root 1854 Jan  2 08:22 ca-key.pem
pi@rpiGarageOpener:~/this-works $ openssl x509 -text -in ../certs/ca-crt.pem
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            54:c7:ad:16:de:5c:f5:a2:fc:e0:b7:7e:ed:28:45:80:4c:38:5f:7f
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: CN = cacert, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Validity
            Not Before: Jan  2 14:22:22 2021 GMT
            Not After : Dec 31 14:22:22 2030 GMT
        Subject: CN = cacert, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (2048 bit)
                Modulus:
                    00:c2:57:e0:a7:bc:07:29:e8:80:a5:eb:f0:ed:9e:
                    8b:5b:16:80:cb:f4:c6:80:34:e5:93:62:0b:f3:75:
                    ff:82:d3:a4:85:68:d6:0d:54:a3:d9:6a:1f:9b:c0:
                    b2:86:07:76:38:68:bf:d1:12:37:44:5d:57:f7:2b:
                    d8:ec:80:03:ac:e8:f0:bd:46:ab:15:b7:dc:91:f5:
                    9e:8d:61:aa:dc:3a:fe:a2:86:59:ce:db:64:4e:c8:
                    fa:97:73:0f:ad:c2:4d:39:e1:e4:dd:c6:f3:a1:ed:
                    0d:05:23:f3:5d:11:c8:59:52:bc:16:11:46:df:9b:
                    63:ab:44:a6:0c:b1:36:ec:7b:64:ac:b5:cf:ee:1b:
                    93:d3:43:ff:23:9e:5c:ac:b6:76:81:3f:a3:aa:1f:
                    2f:67:a5:1f:2c:0c:2f:3c:50:5b:c7:70:74:28:6e:
                    cf:59:7d:04:f9:40:84:36:75:37:a5:67:e7:f4:46:
                    43:df:3d:fa:74:3d:42:8f:2e:29:d6:a4:7a:03:69:
                    4f:ae:4c:3b:b2:b6:2c:ea:3f:f3:0a:a2:2e:c9:4b:
                    58:9b:73:9a:94:4e:b4:55:a8:60:d7:08:61:67:59:
                    9d:88:27:85:fb:68:1c:1d:1d:22:93:8b:62:b2:44:
                    8c:6e:e6:6f:d5:85:24:33:27:47:0c:2f:a0:c0:fe:
                    d1:e3
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier: 
                C0:0D:A7:76:25:05:5D:A8:E3:AD:12:5F:DE:58:6E:2A:6F:FF:45:FF
            X509v3 Authority Key Identifier: 
                keyid:C0:0D:A7:76:25:05:5D:A8:E3:AD:12:5F:DE:58:6E:2A:6F:FF:45:FF

            X509v3 Basic Constraints: critical
                CA:TRUE
    Signature Algorithm: sha256WithRSAEncryption
         46:d3:7c:ad:63:dd:9b:5b:55:96:4f:94:d7:ca:68:23:e3:6b:
         b4:e0:72:d0:b6:49:bf:68:3d:39:1d:68:23:35:71:81:82:01:
         df:18:df:ce:e7:60:3b:eb:d3:43:5e:dd:d2:a1:df:3a:23:4a:
         93:bd:dc:d6:35:d5:44:e1:db:92:21:4f:51:0a:69:1e:0f:82:
         fb:12:df:78:4e:fd:76:f8:68:d0:7c:57:d0:b4:c0:29:4a:a4:
         24:33:5d:a1:42:da:11:34:cd:66:5a:8b:28:d2:a5:f4:b1:66:
         a9:af:4d:70:77:cb:9a:77:7f:70:71:23:ca:ae:ef:4a:9a:f6:
         f3:d9:c8:06:2d:fe:b9:7e:f9:5d:3f:74:cc:44:97:db:e8:f3:
         8a:67:9c:78:f9:3f:b3:aa:c2:95:1a:a5:b0:aa:1f:20:18:3b:
         ab:e5:d4:50:b8:2b:47:29:5b:f8:44:56:dd:20:21:a9:e6:06:
         54:4c:04:0c:dc:f2:6f:9c:7a:23:d6:27:96:c8:14:b0:0e:82:
         31:82:d6:dc:3a:c2:96:35:44:22:9a:82:88:a0:19:00:cd:81:
         b3:2f:15:33:2f:70:c7:e5:e1:2a:f1:96:f6:39:f2:0a:26:f7:
         9e:e6:19:24:ea:12:d0:ba:b7:f3:66:d9:07:8f:69:47:5d:5f:
         ff:2a:85:96
-----BEGIN CERTIFICATE-----
MIIEATCCAumgAwIBAgIUVMetFt5c9aL84Ld+7ShFgEw4X38wDQYJKoZIhvcNAQEL
BQAwgY8xDzANBgNVBAMMBmNhY2VydDEmMCQGCSqGSIb3DQEJARYXMzEwZ2xlbmhv
bGxvd0BnbWFpbC5jb20xCzAJBgNVBAYTAlVTMQ4wDAYDVQQIDAVUZXhhczETMBEG
A1UEBwwKQ2VkYXIgUGFyazETMBEGA1UECgwKQ2FydHdyaWdodDENMAsGA1UECwwE
SmVmZjAeFw0yMTAxMDIxNDIyMjJaFw0zMDEyMzExNDIyMjJaMIGPMQ8wDQYDVQQD
DAZjYWNlcnQxJjAkBgkqhkiG9w0BCQEWFzMxMGdsZW5ob2xsb3dAZ21haWwuY29t
MQswCQYDVQQGEwJVUzEOMAwGA1UECAwFVGV4YXMxEzARBgNVBAcMCkNlZGFyIFBh
cmsxEzARBgNVBAoMCkNhcnR3cmlnaHQxDTALBgNVBAsMBEplZmYwggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDCV+CnvAcp6ICl6/DtnotbFoDL9MaANOWT
Ygvzdf+C06SFaNYNVKPZah+bwLKGB3Y4aL/REjdEXVf3K9jsgAOs6PC9RqsVt9yR
9Z6NYarcOv6ihlnO22ROyPqXcw+twk054eTdxvOh7Q0FI/NdEchZUrwWEUbfm2Or
RKYMsTbse2Sstc/uG5PTQ/8jnlystnaBP6OqHy9npR8sDC88UFvHcHQobs9ZfQT5
QIQ2dTelZ+f0RkPfPfp0PUKPLinWpHoDaU+uTDuytizqP/MKoi7JS1ibc5qUTrRV
qGDXCGFnWZ2IJ4X7aBwdHSKTi2KyRIxu5m/VhSQzJ0cML6DA/tHjAgMBAAGjUzBR
MB0GA1UdDgQWBBTADad2JQVdqOOtEl/eWG4qb/9F/zAfBgNVHSMEGDAWgBTADad2
JQVdqOOtEl/eWG4qb/9F/zAPBgNVHRMBAf8EBTADAQH/MA0GCSqGSIb3DQEBCwUA
A4IBAQBG03ytY92bW1WWT5TXymgj42u04HLQtkm/aD05HWgjNXGBggHfGN/O52A7
69NDXt3Sod86I0qTvdzWNdVE4duSIU9RCmkeD4L7Et94Tv12+GjQfFfQtMApSqQk
M12hQtoRNM1mWoso0qX0sWapr01wd8uad39wcSPKru9Kmvbz2cgGLf65fvldP3TM
RJfb6POKZ5x4+T+zqsKVGqWwqh8gGDur5dRQuCtHKVv4RFbdICGp5gZUTAQM3PJv
nHoj1ieWyBSwDoIxgtbcOsKWNUQimoKIoBkAzYGzLxUzL3DH5eEq8Zb2OfIKJvee
5hkk6hLQurfzZtkHj2lHXV//KoWW
-----END CERTIFICATE-----
pi@rpiGarageOpener:~/this-works $ openssl verify -text -in ../certs/ca-crt.pem
verify: Option unknown option -text
verify: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ openssl verify  -in ../certs/ca-crt.pem
verify: Option unknown option -in
verify: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ man openssl verify
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem
CN = cacert, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
CN = cacert, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
Can't open ../certs/ca-key.pem for reading, Permission denied
3070021648:error:0200100D:system library:fopen:Permission denied:../crypto/bio/bss_file.c:69:fopen('../certs/ca-key.pem','r')
3070021648:error:2006D002:BIO routines:BIO_new_file:system lib:../crypto/bio/bss_file.c:78:
unable to load certificate
pi@rpiGarageOpener:~/this-works $ sudo openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
CN = cacert, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
unable to load certificate
3069661200:error:0909006C:PEM routines:get_name:no start line:../crypto/pem/pem_lib.c:745:Expecting: TRUSTED CERTIFICATE
pi@rpiGarageOpener:~/this-works $ sudo bash ca-certs.sh
Starting Certificate Authority Script
CA cert file (/home/pi/certs/ca-crt.pem) exists.
CA key file (/home/pi/certs/ca-key.pem) exists.

The CA files were created. Do you want to continue? y

Generate Certtificate Authority cert and key
   prompts for PEM Pass Phrase
$ openssl req -new -x509 -days 3650 -keyout /home/pi/certs/ca-key.pem -out /home/pi/certs/ca-crt.pem -passout 'pass:homedep0tpem' -subj "/CN=glenhollow.duckdns.org/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
Generating a RSA private key
................................+++++
....................................................................................................................................................+++++
writing new private key to '/home/pi/certs/ca-key.pem'
-----

   values that may be needed for other guides
     PEM Pass Phrase = homedep0tpem
     Common Name for CA = glenhollow.duckdns.org

     Directory for cert files = 
       CA Cert File = /home/pi/certs/ca-crt.pem
       CA KEY File = /home/pi/certs/ca-key.pem

SUCCESS: Exiting Certificate Authority Script
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
Can't open -subj for reading, No such file or directory
3069767696:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('-subj','r')
3069767696:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
unable to load certificate
Can't open /CN=/emailAddress=/C=US/ST=/L=/O=/OU= for reading, No such file or directory
3069767696:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('/CN=/emailAddress=/C=US/ST=/L=/O=/OU=','r')
3069767696:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
unable to load certificate
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem -subj "/CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
Can't open -subj for reading, No such file or directory
3069239312:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('-subj','r')
3069239312:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
unable to load certificate
Can't open /CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff for reading, No such file or directory
3069239312:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('/CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff','r')
3069239312:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
unable to load certificate
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem -subj /CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
Can't open -subj for reading, No such file or directory
3069374480:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('-subj','r')
3069374480:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
unable to load certificate
Can't open /CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar for reading, No such file or directory
3069374480:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('/CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar','r')
3069374480:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
unable to load certificate
Can't open Park/O=Cartwright/OU=Jeff for reading, No such file or directory
3069374480:error:02001002:system library:fopen:No such file or directory:../crypto/bio/bss_file.c:69:fopen('Park/O=Cartwright/OU=Jeff','r')
3069374480:error:2006D080:BIO routines:BIO_new_file:no such file:../crypto/bio/bss_file.c:76:
unable to load certificate
pi@rpiGarageOpener:~/this-works $ openssl x509 -in ../certs/ca-crt.pem -noout -text
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            3e:d1:f4:17:73:6f:ea:f5:c0:bc:7d:40:bf:55:b2:8b:c5:0f:3e:18
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Validity
            Not Before: Jan  2 14:36:42 2021 GMT
            Not After : Dec 31 14:36:42 2030 GMT
        Subject: CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (2048 bit)
                Modulus:
                    00:bb:3a:06:9c:a4:ce:2c:9d:1c:76:50:2a:08:e1:
                    e3:81:40:d0:86:c4:fc:6f:45:82:91:30:a8:87:13:
                    6a:a1:7f:5e:01:39:96:65:1d:f5:f5:f3:5d:68:ab:
                    16:17:6a:70:ff:2d:c9:9f:34:bd:31:7e:f0:f7:d1:
                    48:8c:3b:e1:77:c4:39:4f:9b:8d:54:84:cb:e1:56:
                    23:1b:9c:8d:1a:13:73:ab:7f:11:9e:9a:4f:08:86:
                    32:7f:b6:b3:9b:cf:3a:21:53:7e:1c:8d:ca:62:12:
                    98:c3:22:99:6d:e1:d7:f0:75:b3:68:92:8c:21:a7:
                    43:6a:a2:6c:18:51:78:64:81:70:ef:b4:c7:de:00:
                    10:95:48:f1:64:c1:d9:31:05:43:cd:c2:88:c1:66:
                    33:c1:9e:d9:92:08:26:58:1d:46:ac:92:33:e1:e4:
                    d9:f8:9c:a3:f7:41:cc:bb:29:d7:eb:6f:3d:e4:ff:
                    97:72:c3:b3:51:de:a1:20:d1:fd:1a:4a:53:2f:22:
                    9c:7b:a7:6b:a7:02:fd:d6:e5:f3:db:3e:d8:1c:41:
                    bc:7d:a5:77:fb:41:40:c8:44:c2:4f:14:8d:9c:7f:
                    67:24:8d:ca:4d:12:9b:a2:a2:bc:34:14:f6:b3:f1:
                    40:47:5d:cb:d7:22:f8:7d:b1:de:53:02:d9:cd:39:
                    c6:2d
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier: 
                24:9E:80:92:09:0F:C2:69:2B:60:F4:6F:DE:8B:59:02:B5:DD:37:E9
            X509v3 Authority Key Identifier: 
                keyid:24:9E:80:92:09:0F:C2:69:2B:60:F4:6F:DE:8B:59:02:B5:DD:37:E9

            X509v3 Basic Constraints: critical
                CA:TRUE
    Signature Algorithm: sha256WithRSAEncryption
         3b:74:50:01:d6:39:5e:61:a0:d3:50:bf:d6:02:49:63:e0:2b:
         88:e1:44:a7:68:5b:aa:a9:e3:47:be:e3:c8:03:fe:d6:66:7b:
         96:62:f2:39:e8:de:36:fe:bc:bb:d2:c5:a8:8d:be:f9:38:6e:
         0a:c8:81:38:a0:38:4c:49:4a:de:88:c8:df:3f:d4:ff:f2:0a:
         b2:ae:4e:13:d0:82:01:12:91:45:3f:ec:d7:b2:64:73:3b:23:
         e3:39:f2:99:5b:f2:56:28:b2:55:78:ab:09:0c:43:75:79:63:
         eb:90:9d:7f:67:2c:3b:c8:57:44:50:0b:3a:98:ca:77:53:c0:
         50:e1:b6:00:55:f7:83:3c:07:bd:ff:11:3a:eb:bf:aa:94:94:
         55:fa:45:b5:af:77:f9:e8:42:c4:a9:1f:d5:75:ae:5c:db:37:
         9c:5d:c9:a7:46:f4:6c:f6:e9:cf:5a:96:7f:ed:78:5f:a9:4c:
         ea:ad:ef:ae:3f:bc:a0:a0:9f:7d:d0:34:80:b9:1a:03:98:4e:
         71:4c:4a:a3:99:9d:6e:3f:e2:1d:44:7e:a6:06:8c:83:c4:6d:
         3b:11:1d:b2:e2:c4:d5:9a:d8:79:c7:bd:5d:78:8c:3d:b9:2b:
         f4:20:a4:4f:b1:b2:b7:68:2e:c2:03:9f:2b:04:60:04:d3:b6:
         de:26:6f:da
pi@rpiGarageOpener:~/this-works $ openssl x509 -in ../certs/ca-crt.pem -noout -subj
x509: Unrecognized flag subj
x509: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ openssl x509 -in ../certs/ca-crt.pem -noout -text
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            3e:d1:f4:17:73:6f:ea:f5:c0:bc:7d:40:bf:55:b2:8b:c5:0f:3e:18
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Validity
            Not Before: Jan  2 14:36:42 2021 GMT
            Not After : Dec 31 14:36:42 2030 GMT
        Subject: CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (2048 bit)
                Modulus:
                    00:bb:3a:06:9c:a4:ce:2c:9d:1c:76:50:2a:08:e1:
                    e3:81:40:d0:86:c4:fc:6f:45:82:91:30:a8:87:13:
                    6a:a1:7f:5e:01:39:96:65:1d:f5:f5:f3:5d:68:ab:
                    16:17:6a:70:ff:2d:c9:9f:34:bd:31:7e:f0:f7:d1:
                    48:8c:3b:e1:77:c4:39:4f:9b:8d:54:84:cb:e1:56:
                    23:1b:9c:8d:1a:13:73:ab:7f:11:9e:9a:4f:08:86:
                    32:7f:b6:b3:9b:cf:3a:21:53:7e:1c:8d:ca:62:12:
                    98:c3:22:99:6d:e1:d7:f0:75:b3:68:92:8c:21:a7:
                    43:6a:a2:6c:18:51:78:64:81:70:ef:b4:c7:de:00:
                    10:95:48:f1:64:c1:d9:31:05:43:cd:c2:88:c1:66:
                    33:c1:9e:d9:92:08:26:58:1d:46:ac:92:33:e1:e4:
                    d9:f8:9c:a3:f7:41:cc:bb:29:d7:eb:6f:3d:e4:ff:
                    97:72:c3:b3:51:de:a1:20:d1:fd:1a:4a:53:2f:22:
                    9c:7b:a7:6b:a7:02:fd:d6:e5:f3:db:3e:d8:1c:41:
                    bc:7d:a5:77:fb:41:40:c8:44:c2:4f:14:8d:9c:7f:
                    67:24:8d:ca:4d:12:9b:a2:a2:bc:34:14:f6:b3:f1:
                    40:47:5d:cb:d7:22:f8:7d:b1:de:53:02:d9:cd:39:
                    c6:2d
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier: 
                24:9E:80:92:09:0F:C2:69:2B:60:F4:6F:DE:8B:59:02:B5:DD:37:E9
            X509v3 Authority Key Identifier: 
                keyid:24:9E:80:92:09:0F:C2:69:2B:60:F4:6F:DE:8B:59:02:B5:DD:37:E9

            X509v3 Basic Constraints: critical
                CA:TRUE
    Signature Algorithm: sha256WithRSAEncryption
         3b:74:50:01:d6:39:5e:61:a0:d3:50:bf:d6:02:49:63:e0:2b:
         88:e1:44:a7:68:5b:aa:a9:e3:47:be:e3:c8:03:fe:d6:66:7b:
         96:62:f2:39:e8:de:36:fe:bc:bb:d2:c5:a8:8d:be:f9:38:6e:
         0a:c8:81:38:a0:38:4c:49:4a:de:88:c8:df:3f:d4:ff:f2:0a:
         b2:ae:4e:13:d0:82:01:12:91:45:3f:ec:d7:b2:64:73:3b:23:
         e3:39:f2:99:5b:f2:56:28:b2:55:78:ab:09:0c:43:75:79:63:
         eb:90:9d:7f:67:2c:3b:c8:57:44:50:0b:3a:98:ca:77:53:c0:
         50:e1:b6:00:55:f7:83:3c:07:bd:ff:11:3a:eb:bf:aa:94:94:
         55:fa:45:b5:af:77:f9:e8:42:c4:a9:1f:d5:75:ae:5c:db:37:
         9c:5d:c9:a7:46:f4:6c:f6:e9:cf:5a:96:7f:ed:78:5f:a9:4c:
         ea:ad:ef:ae:3f:bc:a0:a0:9f:7d:d0:34:80:b9:1a:03:98:4e:
         71:4c:4a:a3:99:9d:6e:3f:e2:1d:44:7e:a6:06:8c:83:c4:6d:
         3b:11:1d:b2:e2:c4:d5:9a:d8:79:c7:bd:5d:78:8c:3d:b9:2b:
         f4:20:a4:4f:b1:b2:b7:68:2e:c2:03:9f:2b:04:60:04:d3:b6:
         de:26:6f:da
pi@rpiGarageOpener:~/this-works $ openssl x509 -noout -subject -in ../certs/ca-crt.pem
subject=CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
pi@rpiGarageOpener:~/this-works $ openssl x509 -noout -subject -in ../certs/ca-crt.pem -text
subject=CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            3e:d1:f4:17:73:6f:ea:f5:c0:bc:7d:40:bf:55:b2:8b:c5:0f:3e:18
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Validity
            Not Before: Jan  2 14:36:42 2021 GMT
            Not After : Dec 31 14:36:42 2030 GMT
        Subject: CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (2048 bit)
                Modulus:
                    00:bb:3a:06:9c:a4:ce:2c:9d:1c:76:50:2a:08:e1:
                    e3:81:40:d0:86:c4:fc:6f:45:82:91:30:a8:87:13:
                    6a:a1:7f:5e:01:39:96:65:1d:f5:f5:f3:5d:68:ab:
                    16:17:6a:70:ff:2d:c9:9f:34:bd:31:7e:f0:f7:d1:
                    48:8c:3b:e1:77:c4:39:4f:9b:8d:54:84:cb:e1:56:
                    23:1b:9c:8d:1a:13:73:ab:7f:11:9e:9a:4f:08:86:
                    32:7f:b6:b3:9b:cf:3a:21:53:7e:1c:8d:ca:62:12:
                    98:c3:22:99:6d:e1:d7:f0:75:b3:68:92:8c:21:a7:
                    43:6a:a2:6c:18:51:78:64:81:70:ef:b4:c7:de:00:
                    10:95:48:f1:64:c1:d9:31:05:43:cd:c2:88:c1:66:
                    33:c1:9e:d9:92:08:26:58:1d:46:ac:92:33:e1:e4:
                    d9:f8:9c:a3:f7:41:cc:bb:29:d7:eb:6f:3d:e4:ff:
                    97:72:c3:b3:51:de:a1:20:d1:fd:1a:4a:53:2f:22:
                    9c:7b:a7:6b:a7:02:fd:d6:e5:f3:db:3e:d8:1c:41:
                    bc:7d:a5:77:fb:41:40:c8:44:c2:4f:14:8d:9c:7f:
                    67:24:8d:ca:4d:12:9b:a2:a2:bc:34:14:f6:b3:f1:
                    40:47:5d:cb:d7:22:f8:7d:b1:de:53:02:d9:cd:39:
                    c6:2d
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier: 
                24:9E:80:92:09:0F:C2:69:2B:60:F4:6F:DE:8B:59:02:B5:DD:37:E9
            X509v3 Authority Key Identifier: 
                keyid:24:9E:80:92:09:0F:C2:69:2B:60:F4:6F:DE:8B:59:02:B5:DD:37:E9

            X509v3 Basic Constraints: critical
                CA:TRUE
    Signature Algorithm: sha256WithRSAEncryption
         3b:74:50:01:d6:39:5e:61:a0:d3:50:bf:d6:02:49:63:e0:2b:
         88:e1:44:a7:68:5b:aa:a9:e3:47:be:e3:c8:03:fe:d6:66:7b:
         96:62:f2:39:e8:de:36:fe:bc:bb:d2:c5:a8:8d:be:f9:38:6e:
         0a:c8:81:38:a0:38:4c:49:4a:de:88:c8:df:3f:d4:ff:f2:0a:
         b2:ae:4e:13:d0:82:01:12:91:45:3f:ec:d7:b2:64:73:3b:23:
         e3:39:f2:99:5b:f2:56:28:b2:55:78:ab:09:0c:43:75:79:63:
         eb:90:9d:7f:67:2c:3b:c8:57:44:50:0b:3a:98:ca:77:53:c0:
         50:e1:b6:00:55:f7:83:3c:07:bd:ff:11:3a:eb:bf:aa:94:94:
         55:fa:45:b5:af:77:f9:e8:42:c4:a9:1f:d5:75:ae:5c:db:37:
         9c:5d:c9:a7:46:f4:6c:f6:e9:cf:5a:96:7f:ed:78:5f:a9:4c:
         ea:ad:ef:ae:3f:bc:a0:a0:9f:7d:d0:34:80:b9:1a:03:98:4e:
         71:4c:4a:a3:99:9d:6e:3f:e2:1d:44:7e:a6:06:8c:83:c4:6d:
         3b:11:1d:b2:e2:c4:d5:9a:d8:79:c7:bd:5d:78:8c:3d:b9:2b:
         f4:20:a4:4f:b1:b2:b7:68:2e:c2:03:9f:2b:04:60:04:d3:b6:
         de:26:6f:da
pi@rpiGarageOpener:~/this-works $ openssl x509 -noout -subject -in ../certs/ca-crt.pem
subject=CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
pi@rpiGarageOpener:~/this-works $ nano ca-certs.sh
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ openssl verify  -x509 ../certs/ca-crt.pem 
verify: Option unknown option -x509
verify: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ openssl verify ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ openssl verify ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ openssl verify -config /etc/ssl/openssl.cnf ../certs/ca-crt.pem 
verify: Option unknown option -config
verify: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
Can't open ../certs/ca-key.pem for reading, Permission denied
3069677584:error:0200100D:system library:fopen:Permission denied:../crypto/bio/bss_file.c:69:fopen('../certs/ca-key.pem','r')
3069677584:error:2006D002:BIO routines:BIO_new_file:system lib:../crypto/bio/bss_file.c:78:
unable to load certificate
pi@rpiGarageOpener:~/this-works $ sudo openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
unable to load certificate
3069476880:error:0909006C:PEM routines:get_name:no start line:../crypto/pem/pem_lib.c:745:Expecting: TRUSTED CERTIFICATE
pi@rpiGarageOpener:~/this-works $ sudo openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
unable to load certificate
3069362192:error:0909006C:PEM routines:get_name:no start line:../crypto/pem/pem_lib.c:745:Expecting: TRUSTED CERTIFICATE
pi@rpiGarageOpener:~/this-works $ sudo openssl verify  ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify  ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -verbose ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -verbose ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -verbose ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -verbose ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -verbose ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo bash ca-certs.sh
Starting Certificate Authority Script
CA cert file (/home/pi/certs/ca-crt.pem) exists.
CA key file (/home/pi/certs/ca-key.pem) exists.

The CA files were created. Do you want to continue? y

Generate Certtificate Authority cert and key
   prompts for PEM Pass Phrase
$ openssl req -new -x509 -days 3650 -keyout /home/pi/certs/ca-key.pem -out /home/pi/certs/ca-crt.pem -passout 'pass:homedep0tpem' -subj "/CN=glenhollow.duckdns.org/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
Generating a RSA private key
...................................................................................................................................................+++++
.........+++++
writing new private key to '/home/pi/certs/ca-key.pem'
-----

   values that may be needed for other guides
     PEM Pass Phrase = homedep0tpem
     Common Name for CA = glenhollow.duckdns.org

     Directory for cert files = 
       CA Cert File = /home/pi/certs/ca-crt.pem
       CA KEY File = /home/pi/certs/ca-key.pem

SUCCESS: Exiting Certificate Authority Script
pi@rpiGarageOpener:~/this-works $ sudo openssl verify ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -passin'pass:h0medep0tpem' ../certs/ca-crt.pem 
verify: Option unknown option -passinpass:h0medep0tpem
verify: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -passin 'pass:h0medep0tpem' ../certs/ca-crt.pem 
verify: Option unknown option -passin
verify: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ sudo openssl verify -pass 'pass:h0medep0tpem' ../certs/ca-crt.pem 
verify: Option unknown option -pass
verify: Use -help for summary.
pi@rpiGarageOpener:~/this-works $ sudo openssl verify ../certs/ca-crt.pem 
CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
error 18 at 0 depth lookup: self signed certificate
error ../certs/ca-crt.pem: verification failed
pi@rpiGarageOpener:~/this-works $ ls ../certs
ca-crt.pem  ca-key.pem
pi@rpiGarageOpener:~/this-works $ ls -l ../certs
total 8
-rw-r--r-- 1 root root 1493 Jan  2 09:19 ca-crt.pem
-rw------- 1 root root 1854 Jan  2 09:19 ca-key.pem
pi@rpiGarageOpener:~/this-works $ nano ca-certs.sh
pi@rpiGarageOpener:~/this-works $ cat server.sh
# Generate Signed Server Certificate
#   generate a private key for the server
openssl genrsa -out server-key.pem 4096
# outputs:
#   server-key.pem

#   generate a signing request
openssl req -new -sha256 -key server-key.pem -out server-csr.pem
# Common Name (e.g. server FQDN or YOUR name) []:glenhollow.duckdns.org
# Email Address []:310glenhollow@gmail.com
# A challenge password []:

# outputs:
#   server-csr.pem

#    generate server cert
openssl x509 -req -days 365 -in server-csr.pem -CA ca-crt.pem -CAkey ca-key.pem -CAcreateserial -out server-crt.pem
# Enter pass phrase for ca-key.pem:

# outputs:
#   ca-crt.srl server-crt.pem



pi@rpiGarageOpener:~/this-works $ nano ca-certs.sh
pi@rpiGarageOpener:~/this-works $ nano ca-certs.sh
pi@rpiGarageOpener:~/this-works $ history | grep verify
  853  openssl verify -text -in ../certs/ca-crt.pem
  854  openssl verify  -in ../certs/ca-crt.pem
  855  man openssl verify
  856  openssl verify  ../certs/ca-crt.pem
  857  openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
  858  sudo openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
  860  openssl verify  ../certs/ca-crt.pem
  861  openssl verify  ../certs/ca-crt.pem -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"
  862  openssl verify  ../certs/ca-crt.pem -subj "/CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"
  863  openssl verify  ../certs/ca-crt.pem -subj /CN=glenhollow.duckdns.org/emailAddress=glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff
  871  openssl verify  ../certs/ca-crt.pem 
  872  openssl verify  -x509 ../certs/ca-crt.pem 
  873  openssl verify ../certs/ca-crt.pem 
  874  openssl verify -config /etc/ssl/openssl.cnf ../certs/ca-crt.pem 
  875  openssl verify  ../certs/ca-crt.pem 
  876  openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
  877  sudo openssl verify  ../certs/ca-crt.pem ../certs/ca-key.pem
  878  sudo openssl verify  ../certs/ca-crt.pem 
  879  sudo openssl verify -verbose ../certs/ca-crt.pem 
  880  sudo openssl verify ../certs/ca-crt.pem 
  882  sudo openssl verify ../certs/ca-crt.pem 
  883  sudo openssl verify -passin'pass:h0medep0tpem' ../certs/ca-crt.pem 
  884  sudo openssl verify -passin 'pass:h0medep0tpem' ../certs/ca-crt.pem 
  885  sudo openssl verify -pass 'pass:h0medep0tpem' ../certs/ca-crt.pem 
  886  sudo openssl verify ../certs/ca-crt.pem 
  892  history | grep verify
pi@rpiGarageOpener:~/this-works $ nano ca-certs.sh
pi@rpiGarageOpener:~/this-works $ ls
apache-restart.sh  ca-certs.sh  client.sh  private-data.sh  read.me  server.sh  THIS-WORKS.sh
pi@rpiGarageOpener:~/this-works $ cat client.sh
# Generate signed client specific certificates
#   Generating certificate for first client
openssl genrsa -out clientA-key.pem 4096

# outputs:
#   clientA-key.pem

#   generate a signing request
openssl req -new -sha256 -key clientA-key.pem -out clientA-csr.pem

# Common Name (e.g. server FQDN or YOUR name) []:glenhollow.duckdns.org
# Email Address []:310glenhollow@gmail.com
# A challenge password []:

# outputs:
#   clientA-csr.pem

openssl x509 -req -days 365 -in clientA-csr.pem -CA ca-crt.pem -CAkey ca-key.pem -CAcreateserial -out clientA-crt.pem
# Enter pass phrase for ca-key.pem:

# outputs:
#   clientA-crt.pem

#second client - same as first client
openssl genrsa -out clientB-key.pem 4096
openssl req -new -sha256 -key clientB-key.pem -out clientB-csr.pem
openssl x509 -req -days 365 -in clientB-csr.pem -CA ca-crt.pem -CAkey ca-key.pem -CAcreateserial -out clientB-crt.pem

# outputs:
#   clientB-csr.pem clientB-key.pem clientB-crt.pem



pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ sudo bash client.sh
Starting Client-side Cert Script

Enter username or client side device name

Username: jeffs-iphone

   Generate Client-side key

openssl genrsa -out /home/pi/certs/jeffs-iphone-key.pem 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
..............................................................................++++
.....................++++
e is 65537 (0x010001)

   Generate Client-side request

openssl req -new -sha256 -key /home/pi/certs/jeffs-iphone-key.pem -out /home/pi/certs/jeffs-iphone-csr.pem
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [US]:^C
pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ sudo bash client.sh
Starting Client-side Cert Script

Enter username or client side device name

Username: jeffs-iphone           

   Generate Client-side key

openssl genrsa -out /home/pi/certs/jeffs-iphone-key.pem 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
................++++
.........++++
e is 65537 (0x010001)

   Generate Client-side request

openssl req -new -sha256 -key /home/pi/certs/jeffs-iphone-key.pem -out /home/pi/certs/jeffs-iphone-csr.pem -subj "/CN=glenhollow.duckdns.org/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"

   Generate Client-side cert

openssl x509 -req -days 365 -in /home/pi/certs/jeffs-iphone-csr.pem -CA /home/pi/certs/ca-crt.pem -CAkey /home/pi/certs/ca-key.pem -CAcreateserial -out /home/pi/certs/jeffs-iphone-crt.pem
Signature ok
subject=CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
Getting CA Private Key
Enter pass phrase for /home/pi/certs/ca-key.pem:


Exiting Client-side Cert Script
pi@rpiGarageOpener:~/this-works $ ls
apache-restart.sh  ca-certs.sh  client.sh  private-data.sh  read.me  server.sh  THIS-WORKS.sh
pi@rpiGarageOpener:~/this-works $ ls ../certs
ca-crt.pem  ca-crt.srl  ca-key.pem  jeffs-iphone-crt.pem  jeffs-iphone-csr.pem  jeffs-iphone-key.pem  server-crt.pem  server-csr.pem  server-key.pem
pi@rpiGarageOpener:~/this-works $ ls -l ../certs
total 36
-rw-r--r-- 1 root root 1448 Jan  2 14:07 ca-crt.pem
-rw-r--r-- 1 root root   41 Jan  2 15:16 ca-crt.srl
-rw------- 1 root root 1854 Jan  2 14:07 ca-key.pem
-rw-r--r-- 1 root root 1696 Jan  2 15:16 jeffs-iphone-crt.pem
-rw-r--r-- 1 root root 1773 Jan  2 15:15 jeffs-iphone-csr.pem
-rw------- 1 root root 3247 Jan  2 15:15 jeffs-iphone-key.pem
-rw-r--r-- 1 root root 1696 Jan  2 14:17 server-crt.pem
-rw-r--r-- 1 root root 1773 Jan  2 14:17 server-csr.pem
-rw------- 1 root root 3243 Jan  2 14:17 server-key.pem
pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ sudo bash client.sh
Starting Client-side Cert Script

Enter username or client side device name

Username: iphone2

   Generate Client-side key

openssl genrsa -out /home/pi/certs/iphone2-key.pem 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
........................................++++
......................................................................................................................................................................................................................................................................................................++++
e is 65537 (0x010001)

   Generate Client-side request

openssl req -new -sha256 -key /home/pi/certs/iphone2-key.pem -out /home/pi/certs/iphone2-csr.pem -subj "/CN=glenhollow.duckdns.org/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"

   Generate Client-side cert

openssl x509 -req -days 365 -in /home/pi/certs/iphone2-csr.pem -CA /home/pi/certs/ca-crt.pem -CAkey /home/pi/certs/ca-key.pem -CAcreateserial -out /home/pi/certs/iphone2-crt.pem
Signature ok
subject=CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
Getting CA Private Key
Enter pass phrase for /home/pi/certs/ca-key.pem:

client.sh: line 113: unexpected EOF while looking for matching `"'
pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ sudo bash client.sh
Starting Client-side Cert Script

Enter username or client side device name

Username: ip3

   Generate Client-side key

openssl genrsa -out /home/pi/certs/ip3-key.pem 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
.................................................................................................................................................++++
.......................................................................................................................................++++
e is 65537 (0x010001)

   Generate Client-side request

openssl req -new -sha256 -key /home/pi/certs/ip3-key.pem -out /home/pi/certs/ip3-csr.pem -subj "/CN=glenhollow.duckdns.org/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"

   Generate Client-side cert

openssl x509 -req -days 365 -in /home/pi/certs/ip3-csr.pem -CA /home/pi/certs/ca-crt.pem -CAkey /home/pi/certs/ca-key.pem -CAcreateserial -out /home/pi/certs/ip3-crt.pem
Signature ok
subject=CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
Getting CA Private Key
Enter pass phrase for /home/pi/certs/ca-key.pem:

client.sh: line 113: unexpected EOF while looking for matching `"'
pi@rpiGarageOpener:~/this-works $ nano client.sh
pi@rpiGarageOpener:~/this-works $ sudo bash client.sh
Starting Client-side Cert Script

Enter username or client side device name

Username: ip6

   Generate Client-side key

openssl genrsa -out /home/pi/certs/ip6-key.pem 4096
Generating RSA private key, 4096 bit long modulus (2 primes)
............++++
...........................................................................................................................................................................................................................................................................................................................................................................................................................................................................................++++
e is 65537 (0x010001)

   Generate Client-side request

openssl req -new -sha256 -key /home/pi/certs/ip6-key.pem -out /home/pi/certs/ip6-csr.pem -subj "/CN=glenhollow.duckdns.org/emailAddress=310glenhollow@gmail.com/C=US/ST=Texas/L=Cedar Park/O=Cartwright/OU=Jeff"

   Generate Client-side cert

openssl x509 -req -days 365 -in /home/pi/certs/ip6-csr.pem -CA /home/pi/certs/ca-crt.pem -CAkey /home/pi/certs/ca-key.pem -CAcreateserial -out /home/pi/certs/ip6-crt.pem
Signature ok
subject=CN = glenhollow.duckdns.org, emailAddress = 310glenhollow@gmail.com, C = US, ST = Texas, L = Cedar Park, O = Cartwright, OU = Jeff
Getting CA Private Key
Enter pass phrase for /home/pi/certs/ca-key.pem:

   Generate pkcs12 file to install on ip6

openssl pkcs12 -export -inkey /home/pi/certs/ip6-key.pem -in /home/pi/certs/ip6-crt.pem -out /home/pi/certs/ip6.p12
Enter Export Password:
Verifying - Enter Export Password:

   Changing mode and copying to home directory

   Allows p12 file to be read and copied to device. This needs to be changed back to sudo chmod 600 after installed on device

   Verify Client-side cert

sudo openssl verify -CAfile /home/pi/certs/ca-crt.pem /home/pi/certs/ip6-crt.pem
/home/pi/certs/ip6-crt.pem: OK


Exiting Client-side Cert Script
pi@rpiGarageOpener:~/this-works $ client_loop: send disconnect: Broken pipe
Jeffs-MBP:~ jeff$ 
Jeffs-MBP:~ jeff$ ssh pi@rpiGarageOpener
pi@rpigarageopener's password: 
Linux rpiGarageOpener 5.4.72+ #1356 Thu Oct 22 13:56:00 BST 2020 armv6l

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
You have mail.
Last login: Sat Jan  2 18:14:54 2021 from 192.168.1.118
pi@rpiGarageOpener:~ $ cd this-works
pi@rpiGarageOpener:~/this-works $ client_loop: send disconnect: Broken pipe
Jeffs-MBP:~ jeff$ ssh pi@rpiGarageOpener
pi@rpigarageopener's password: 
Linux rpiGarageOpener 5.4.72+ #1356 Thu Oct 22 13:56:00 BST 2020 armv6l

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
You have mail.
Last login: Sat Jan  2 21:52:35 2021 from 192.168.1.118
pi@rpiGarageOpener:~ $ cd this-works
pi@rpiGarageOpener:~/this-works $ client_loop: send disconnect: Broken pipe
Jeffs-MBP:~ jeff$ ssh pi@rpiGarageOpener
pi@rpigarageopener's password: 
Linux rpiGarageOpener 5.4.72+ #1356 Thu Oct 22 13:56:00 BST 2020 armv6l

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
You have mail.
Last login: Sat Jan  2 21:53:04 2021 from 192.168.1.118
pi@rpiGarageOpener:~ $ cd this-works
pi@rpiGarageOpener:~/this-works $ ls
apache-restart.sh  ca-certs.sh  client.sh  private-data.sh  read.me  read.me.save  server.sh  THIS-WORKS.sh
pi@rpiGarageOpener:~/this-works $ nano ca-certs.sh

  GNU nano 3.2                                                       ca-certs.sh                                                                 

#!/bin/bash

# bash script to create Certifcate Authority

# run as:
#   sudo bash ca-certs.sh

# exit on error
set -e

# defines values for private data that should not be shared
source private-data.sh

CACERTFILE="$MYCERTSDIR/$CACRT.pem"
CAKEYFILE="$MYCERTSDIR/$CAKEY.pem"

CADAYS=3650

echo "Starting Certificate Authority Script"

# The script must run as sudo. If not sudo, then exit
#
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with: sudo bash ca-certs.sh"
    echo
    echo "Failure: Exiting Certificate Authority setup script"
    exit 1
fi

# must edit private data before runnning the script
if [[ "$EMAIL" == *"<"* ]]; then
    echo
    echo "Please edit the global names in private-data.sh before running"
    echo "    Location = $CITY, $STATE, $COUNTRY"
    echo "    Name = $LASTNAME, $FIRSTNAME"
    echo "    email = $EMAIL"
    echo "    cert password = $CERTPASSWORD"
    echo
    echo " Feilure: Exiting Certificate Authority setup script"
fi

# The script only needs to be run one time on a server
#
# If the ca-cert key and pem files exist then prompt user if they really want
# to continue. If they don't, then exit
#
if [ -f "$CACERTFILE" ]; then
    echo "CA cert file ($CACERTFILE) exists."
    if [ -f "$CAKEYFILE" ]; then
        echo "CA key file ($CAKEYFILE) exists."
        echo
        read -p "The CA files were created. Do you want to continue? " -r
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo
            echo "Failure: Exiting Certificate Authority setup script"
            exit 1
        fi
    fi
else
    echo "No CA files found."
fi

# outputs:
#   ca-crt.pem  ca-key.pem
echo
echo "Generate Certtificate Authority cert and key"
echo "   prompts for PEM Pass Phrase"
echo "$ openssl req -new -x509 -days $CADAYS -keyout $CAKEYFILE -out $CACERTFILE -subj \"/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/$
openssl req -new -x509 -days $CADAYS -keyout $CAKEYFILE -out $CACERTFILE -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNA$

echo
echo "   values that may be needed for other guides"
echo "     PEM Pass Phrase = $PEMPSWD"
echo "     Common Name for CA = $CANAME"
echo
echo "     Directory for cert files = $MYCERTS"
echo "       CA Cert File = $CACERTFILE"
echo "       CA KEY File = $CAKEYFILE"

echo
echo "SUCCESS: Exiting Certificate Authority Script"

