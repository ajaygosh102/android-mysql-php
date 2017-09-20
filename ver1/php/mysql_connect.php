<?php
	DEFINE ('DB_USERNAME','db_username_here');
	DEFINE ('DB_PASSWORD','db_password_here')
	DEFINE ('DB_NAME','db_supermarket');

	$dbc=@mysqli_connect(DB_HOST,DB_USERNAME,DB_PASSWORD,DB_NAME)
	OR die('Connection error : mysql ; '.
		mysqli_connect_error());
?>