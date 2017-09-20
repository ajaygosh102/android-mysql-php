<?php
	require_once('mysql_connect.php');

    //now the procut_id will be an array
	$var_customer_email=$_GET['customer_id'];
    
    $query="select CUSTOMER_EMAIL from CUSTOMER where CUSTOMER_EMAIL=\"".$var_customer_email."\"";
    $response=@mysqli_query($dbc,$query);

    if($response){
        $output=mysqli_fetch_object($response);
    }
    if($output==null){
    	$myObj="{\"CUSTOMER_EMAIL\":\"null\"}";
        $output= json_decode($myObj);
    }
    print(json_encode($output));
    
    require_once('mysql_connection_close.php');
?>