<?php
	// Note: wiring Pi pin 5 is physical pin 18, or RPI.GPIO pin 24
	$sensor = exec('gpio read 5');

	if(isset($_GET['trigger']) && $_GET['trigger'] == 1) {
		error_reporting(E_ALL);
		// Note: wiring Pi pin 4 is physical pin 16, or RPI.GPIO pin 23
		exec('gpio mode 4 out');
		exec('gpio write 4 0');
		usleep(1000000);
		exec('gpio write 4 1');
		// an accidental page refresh causes the garage door to open
		// the following two lines must be before any HTML to prevent accidental door openings
		header('Location: /index.php');
		die();
	}

	// requires /var/www/db to be writeable chmod og+w /db
	$garageDB = new SQLite3('/var/www/db/garagedoor.db');

	// a cronjob is required to read the command and execute it
        if(isset($_GET['cmd'])) {
		$cmd = $_GET['cmd'];
                if($cmd == 'schedule') {
		        $results = $garageDB->query('select * from status where name = "schedule";');
        		$res = $results->fetchArray(SQLITE3_ASSOC);
        		$value = $res['value'];
		        if ($value == 'on') {
                        	$results = $garageDB->query('UPDATE status SET value = "off" WHERE name = "schedule";');
			} else {
                                $results = $garageDB->query('UPDATE status SET value = "on" WHERE name = "schedule";');
			}
                        usleep(3000000);
	                header('Location: /index.php');
        	        die();
		}
		if ($cmd == 'vacation') {
                        $results = $garageDB->query('select * from status where name = "vacation";');
                        $res = $results->fetchArray(SQLITE3_ASSOC);
                        $value = $res['value'];
                        if ($value == 'yes') {
                                $results = $garageDB->query('UPDATE status SET value = "no" WHERE name = "vacation";');
                        } else {
                                $results = $garageDB->query('UPDATE status SET value = "yes" WHERE name = "vacation";');
                        }
	                usleep(3000000);
                        header('Location: /index.php');
                        die();
		}
        }
?>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Garage Door Opener</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,user-scalable=yes">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!--
	To Do List:
        	+ Allow schedule to be changed from this menu
        	+ Figure out a way to update after a command without manually refreshing a page

        I think when php clean runs in cron with /usr/lib/php5/maxlifetime, this causes a refresh to settings
	triggering the garage door to open and an alarm to sound
	<meta http-equiv="refresh" content="10" />
	-->
</head>

<body>
	<div class="site-header-div">
		<div class="site-header-table">
			<td><img class="site-header-icon" src="img/raspberry-pi.png" ></td>
			<td><a class="site-header-text" href="/index.php">Garage Door Opener</a></td>
			<td><img class="site-header-menu" src="img/menu-icon.png"></td>
		</div>
	</div>

	<div>
	<nav class="nav" role="navigation">
		<ul class="nav__list">
<?php
if ($sensor == 1) {
        echo "                                  <li><a href=\"#\">Garage Door<xx class=\"value\">closed</xx></a></li>\r";
} else {
        echo "                                  <li><a href=\"#\">Garage Door<xx class=\"value\">open</xx></a></li>\r";
}
?>			<li>
				<input id="group-1" type="checkbox" hidden />
				<label for=group-1>Commands (wait for door and then refresh page)</label>
				<ul class="group-list">

<?php
if ($sensor == 1) {
        echo "                                  <li><a href='/index.php'><img src=\"img/remote-background.png\" width=\"20\" height=\"17\"> Close Garage Door</a></li>\r";
        echo "                                  <li><a href='/index.php?trigger=1'><img src=\"img/remote-background.png\" width=\"20\" height=\"17\"> Open Garage Door</a></li>\r";
} else {
        echo "                                  <li><a href='/index.php?trigger=1'><img src=\"img/remote-background.png\" width=\"20\" height=\"17\"> Close Garage Door</a></li>\r";
        echo "                                  <li><a href='/index.php'><img src=\"img/remote-background.png\" width=\"20\" height=\"17\"> Open Garage Door</a></li>\r";
}
?>
				</ul>
			</li>
			<li>
				<input id="group-2" type="checkbox" hidden />
				<label for="group-2">Schedule & Vacation</label>
				<ul class="group-list">
					<li>
<?php
        $results = $garageDB->query('select * from status where name = "vacation";');
        $res = $results->fetchArray(SQLITE3_ASSOC);
        $value = $res['value'];
 	if ($cmd == 'vacation') {
		echo "					<li><a href='/index.php'> Toggle Vacation<xx class=\"value\">", $value, "</xx></a></li>\r";
	} else {
		echo "					<li><a href='/index.php?cmd=vacation'> Toggle Vacation<xx class=\"value\">", $value, "</xx></a></li>\r";
	}

        $results = $garageDB->query('select * from status where name = "schedule";');
        $res = $results->fetchArray(SQLITE3_ASSOC);
        $value = $res['value'];
  	if ($cmd == 'schedule') {
		echo "					<li><a href='/index.php'> Toggle Schedule<xx class=\"value\">", $value, "</xx></a></li>\r";
	} else {
		echo "					<li><a href='/index.php?cmd=schedule'> Toggle Schedule<xx class=\"value\">", $value, "</xx></a></li>\r";
	}
?>
					</li>
					<li>
						<input id="sub-group-2b" type="checkbox" hidden />
						<label for="sub-group-2b"> Schedule</label>
						<ul class="sub-group-list">
<?php

	$results = $garageDB->query('select * from schedule where day = "Sunday";');
	$res = $results->fetchArray(SQLITE3_ASSOC);
	$day = $res['day'];
	$arm = $res['arm'];
	$disarm = $res['disarm'];
	echo "					<li><a href='/schedule.php?day=Sunday'>", $day, "<xx class=\"value\">", $arm, " ", $disarm, "</xx></a></li>\r";

	$results = $garageDB->query('select * from schedule where day = "Monday";');
	$res = $results->fetchArray(SQLITE3_ASSOC);
	$day = $res['day'];
	$arm = $res['arm'];
	$disarm = $res['disarm'];
        echo "                                  <li><a href='/schedule.php?day=Monday'>", $day, "<xx class=\"value\">", $arm, " ", $disarm, "</xx></a></li>\r";

	$results = $garageDB->query('select * from schedule where day = "Tuesday";');
	$res = $results->fetchArray(SQLITE3_ASSOC);
	$day = $res['day'];
	$arm = $res['arm'];
	$disarm = $res['disarm'];
        echo "                                  <li><a href='/schedule.php?day=Tuesday'>", $day, "<xx class=\"value\">", $arm, " ", $disarm, "</xx></a></li>\r";

	$results = $garageDB->query('select * from schedule where day = "Wednesday";');
	$res = $results->fetchArray(SQLITE3_ASSOC);
	$day = $res['day'];
	$arm = $res['arm'];
	$disarm = $res['disarm'];
        echo "                                  <li><a href='/schedule.php?day=Wednesday'>", $day, "<xx class=\"value\">", $arm, " ", $disarm, "</xx></a></li>\r";

	$results = $garageDB->query('select * from schedule where day = "Thursday";');
	$res = $results->fetchArray(SQLITE3_ASSOC);
	$day = $res['day'];
	$arm = $res['arm'];
	$disarm = $res['disarm'];
        echo "                                  <li><a href='/schedule.php?day=Thursday'>", $day, "<xx class=\"value\">", $arm, " ", $disarm, "</xx></a></li>\r";

	$results = $garageDB->query('select * from schedule where day = "Friday";');
	$res = $results->fetchArray(SQLITE3_ASSOC);
	$day = $res['day'];
	$arm = $res['arm'];
	$disarm = $res['disarm'];
        echo "                                  <li><a href='/schedule.php?day=Friday'>", $day, "<xx class=\"value\">", $arm, " ", $disarm, "</xx></a></li>\r";

	$results = $garageDB->query('select * from schedule where day = "Saturday";');
	$res = $results->fetchArray(SQLITE3_ASSOC);
	$day = $res['day'];
	$arm = $res['arm'];
	$disarm = $res['disarm'];
        echo "                                  <li><a href='/schedule.php?day=Saturday'>", $day, "<xx class=\"value\">", $arm, " ", $disarm, "</xx></a></li>\r";
?>
						</ul>
					</li>
				</ul>
                        </li>
                        <li>
				<input id="group-3" type="checkbox" hidden />
                                <label for="group-3">Documents</label>
                                <ul class="group-list">
                                        <li><a href="/GarageDoor.pdf">Garage Door Manual including Remote Control<xx class="value">></xx></a></li>
                                        <li><a href="https://sites.google.com/site/cartwrightraspberrypiprojects/home/home-automation-categories/access-control/garage-door-opener">Garage Door Opener Project<xx class="value">></xx></a></li>
                                        <li><a href="https://github.com/dumbo25/garageDoorOpener2">Garage Door Opener github<xx class="value">></xx></a></li>
				</ul>
                        </li>
<?php
        $results = $garageDB->query('select * from status where name = "monitor";');
        $res = $results->fetchArray(SQLITE3_ASSOC);
        $monitor = $res['value'];
	if ($monitor == 'on') {
	        echo "                          <li><a href=\"http://rpigarageopener.local:8888/\">Raspberry Pi Monitor</a></li>";
	}
?>
                        	</ul>
                	</li>
		</ul>
	</nav>
	</div>
	<!-- A footer is not recommended because the expanding menus can go beyond footer -->
</body>
</html>

