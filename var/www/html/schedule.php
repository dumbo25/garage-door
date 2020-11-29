<?php
        $garageDB = new SQLite3('/var/www/db/garagedoor.db');

        $day = $arm = $disarm = "";

	if(isset($_GET['day'])) {
                $day = $_GET['day'];
		$q = "select * from schedule where day = '" . $day . "';";
                $results = $garageDB->query($q);
                $res = $results->fetchArray(SQLITE3_ASSOC);
                $arm = $res['arm'];
                $disarm = $res['disarm'];
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
<?php
	// define variables and set to empty values
	$dayErr = $armErr = $disarmErr = "";

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		if (empty($_POST["day"])) {
			$dayErr = "Day of week is required";
		} else {
			$day = test_input($_POST["day"]);
			// check if day is correct
			if ($day == 'Monday' || $day == 'Tuesday' || $day == 'Wednesday' || $day == 'Thursday' || $day == 'Friday' || $day == 'Saturday' || $day == 'Sunday') {
				// do nothing
			} else {
                	         $dayErr = "Must be day of week; First letter capitalized";
			}
		}

		if (empty($_POST["arm"])) {
			$armErr = "Arm Time is required";
		} else {
			$arm = test_input($_POST["arm"]);
			// check if e-mail address is well-formed
		}

		if (empty($_POST["disarm"])) {
	                $disarmxErr = "Disarm Time is required";
		} else {
			$disarm = test_input($_POST["disarm"]);
			// check if URL address syntax is valid
		}

	}

	function test_input($data) {
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}
?>

<h2>Change Schedule for Day of Week</h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <br><br>
	Day of Week: <input type="text" name="day" value="<?php echo $day;?>">
	<span class="error"> <?php echo $dayErr;?></span>
	<br><br>
	Arm Time: <input type="text" name="arm" value="<?php echo $arm;?>">
	<span class="error">hh:mm:ss <?php echo $armErr;?></span>
	<br><br>
	Disarm Time: <input type="text" name="disarm" value="<?php echo $disarm;?>">
	<span class="error">hh:mm:ss<?php echo $disarmErr;?></span>
	<br><br>
	<input type="submit" name="submitform" value="Submit">
</form>
	</div>

<?php
	$q = "UPDATE schedule SET arm = '" . $arm . "', disarm = '" . $disarm . "' WHERE day = '" . $day . "'";
	$results = $garageDB->query($q);

        usleep(3000000);

	if (isset($_POST['submitform'])) {
		header('Location: index.php');
	}
?>

</body>
</html>
