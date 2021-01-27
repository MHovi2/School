<?php 
$servername ="localhost";
$username = "root";
$password = "";

try {

		$conn = new PDO("mysql:host=$servername;dbname=bditfactory",
		$username,$password);

		$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		//echo "Connection successfully";
	}

catch(PDOException $e)
	{
		echo "Connection failed" .$e->getMessage();
	}

 ?>