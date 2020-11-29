#!/bin/sh
# run using: sudo bash createDB.sh

mkdir /var/www/db

rm /var/www/db/garagedoor.db

sqlite3 /var/www/db/garagedoor.db <<EOF
CREATE TABLE schedule (tdate DATE, ttime TIME, day TEXT, arm TIME, disarm TIME);
INSERT INTO schedule ( tdate, ttime, day, arm, disarm ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'Sunday', '00:00:00', '05:00:00');
INSERT INTO schedule ( tdate, ttime, day, arm, disarm ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'Monday', '00:00:00', '05:00:00');
INSERT INTO schedule ( tdate, ttime, day, arm, disarm ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'Tuesday', '00:00:00', '05:00:00');
INSERT INTO schedule ( tdate, ttime, day, arm, disarm ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'Wednesday', '00:00:00', '05:00:00');
INSERT INTO schedule ( tdate, ttime, day, arm, disarm ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'Thursday', '00:00:00', '05:00:00');
INSERT INTO schedule ( tdate, ttime, day, arm, disarm ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'Friday', '00:00:00', '05:00:00');
INSERT INTO schedule ( tdate, ttime, day, arm, disarm ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'Saturday', '00:00:00', '05:00:00');
CREATE TABLE status (tdate DATE, ttime TIME, name TEXT, value TEXT);
INSERT INTO status ( tdate, ttime, name, value ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'vacation', 'no');
INSERT INTO status ( tdate, ttime, name, value ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'schedule', 'off');
INSERT INTO status ( tdate, ttime, name, value ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'command', '');
INSERT INTO status ( tdate, ttime, name, value ) VALUES ( strftime('%Y-%m-%d', 'now'), strftime('%H:%M:%S', 'now'), 'monitor', 'on');
EOF

sudo chmod og+w /var/www/db/*.db
