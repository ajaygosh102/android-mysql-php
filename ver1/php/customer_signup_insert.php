<?php
	require_once('mysql_connect.php');

    //now the procut_id will be an array
	$var_customer_information=$_GET['c_info'];
    
    //insert statement
    $query="insert into CUSTOMER(CUSTOMER_ID,CUSTOMER_PASS,CUSTOMER_GENDER,CUSTOMER_FIRST_NAME,CUSTOMER_MIDDLE_NAME,CUSTOMER_LAST_NAME,CUSTOMER_EMAIL,CUSTOMER_CONTACT_MOBILE) values(null,";
        
    foreach ($var_customer_information as $arg_index => $cus_info) {
        if($arg_index!=6){
            $query=$query."'".$cus_info."',";
        }else{
            $query=$query."'".$cus_info."'";
        }
    }
    $query=$query.")";

    $response=@mysqli_query($dbc,$query);
    echo $query;
    //okay
    require_once('mysql_connection_close.php');
?>