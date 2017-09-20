<?php
	require_once('mysql_connect.php');

	$var_item_id=$_GET['item_id'];
	$query="select * from PRODUCT where PRODUCT_ID=\"".$var_item_id."\"";
	$response=@mysqli_query($dbc,$query);

	if($response){
        $output=null;
        while($e=mysqli_fetch_assoc($response)){
          $output[]=$e;
        }
        print(json_encode($output));
    }else{
        echo "[{\"PRODUCT_ID\":\"00000000\"}]";
    }
    
    require_once('mysql_connection_close.php');
?>