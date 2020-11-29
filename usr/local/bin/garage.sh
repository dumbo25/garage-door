#!/bin/bash
# check if the garage door is open.
# enter a  crontab: */5 * * * * sudo /usr/local/bin/garage.sh
# If open send an alert and write to syslog
up=0
door=$(/home/pi/wiringPi/gpio/gpio read 17)

# get current time
currTime=`date +%k%M`


# get whether or not on vacation
# I get emails when SQLITE_BUSY occurs. So, changed timeout from 1000 to 20000. Seems like recommended solution.
vacation=$(sqlite3 -init <(echo .timeout 20000) /var/www/db/garage.db "SELECT value FROM status WHERE name = \"vacation\"";)


# # if on vacation
if [ "$vacation" == "yes" ]
then
	# and door is up
	if [ "$door" -eq "$up" ]; then
		logger rpiGarageOpener: Garage Door Open
		echo "close the garage door" | mail -s "Garage Door Open and on vacation" 5127139980@txt.att.net
        fi
# if not on vacation and time is between 10pm and midnight
elif [ "$vacation" == "no" ] 
then
        if [ $currTime -gt 2200 -a $currTime -lt 2400 ]
        then 
                if [ "$door" -eq "$up" ]
	        then
                        logger rpiGarageOpener: Garage Door Open
                        echo "close the garage door" | mail -s "Garage Door Open late at night" 5127139980@txt.att.net
                fi
        # or, if time is less then 7:00am
        elif [ $currTime -gt 0 -a $currTime -lt 700 ]
        then
                if [ "$door" -eq "$up" ]
        	then
                        logger rpiGarageOpener: Garage Door Open
                        echo "close the garage door" | mail -s "Garage Door Open to early" 5127139980@txt.att.net
                fi
        fi
fi

# some debug outputs
# echo "up = $up"
# echo "door = $door"
# echo "vacation = #vacation"
# echo "time = $currtIme"
exit 0
