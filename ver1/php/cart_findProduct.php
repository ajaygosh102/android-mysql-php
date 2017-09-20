<?php
	require_once('mysql_connect.php');

	$var_item_id=$_GET['product_id'];
	$query="select * from PRODUCT where PRODUCT_ID=\"".$var_item_id."\"";
	$response=@mysqli_query($dbc,$query);

	if($response){
        $output=null;
        while($e=mysqli_fetch_assoc($response)){
          $output[]=$e;
        }
        if($output==null){
            $myObj="{\"PRODUCT_ID\":\"00000000\"}";
            $output= json_decode($myObj);
        }
        print(json_encode($output));
    }
    
    require_once('mysql_connection_close.php');
?>