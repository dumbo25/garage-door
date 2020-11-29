#!/bin/bash
# manual edit and remove insecure versions of TLS and SSL from apache2 conf files
#
# run this command:  more /etc/apache2/apache2.conf
# use ls to find each file
#
# use CTRL-w to find SSLProtocol, and change to:
#     SSLProtocol all -SSLv2 -SSLv3 -TLSv1 -TLSv1.1

cat /etc/apache2/apache2.conf | grep SSLProtocol
cat /etc/apache2/ports.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/alias.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/autoindex.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/deflate.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/dir.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/mime.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/mpm_event.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/negotiation.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/reqtimeout.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/setenvif.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/status.conf | grep SSLProtocol
cat /etc/apache2/mods-enabled/wsgi.conf | grep SSLProtocol
cat /etc/apache2/conf-enabled/charset.conf | grep SSLProtocol
cat /etc/apache2/conf-enabled/localized-error-pages.conf | grep SSLProtocol
cat /etc/apache2/conf-enabled/other-vhosts-access-log.conf | grep SSLProtocol
cat /etc/apache2/conf-enabled/security.conf | grep SSLProtocol
cat /etc/apache2/conf-enabled/serve-cgi-bin.conf | grep SSLProtocol
cat /etc/apache2/sites-enabled/000-default.conf | grep SSLProtocol
