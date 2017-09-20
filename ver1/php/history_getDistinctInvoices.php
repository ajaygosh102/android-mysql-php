<?php
	require_once('mysql_connect.php');

	$var_customer_id=$_GET['customer_id'];
	$query="select distinct INVOICE_ID,count(*) as INVOICE_QTY,INVOICE_DATE,(select sum(PRODUCT_UNIT_PRICE) from PRODUCT t2 where PRODUCT_ID in (select PRODUCT_ID from INVOICE t3 where INVOICE_ID=t1.INVOICE_ID)) as INVOICE_AMOUNT from INVOICE t1 where INVOICE_ID like \"C".str_pad($var_customer_id, 20, '0', STR_PAD_LEFT)."%\" group by INVOICE_ID order by INVOICE_DATE desc,INVOICE_ID desc";
    //echo $query;
	$response=@mysqli_query($dbc,$query);

	if($response){
        $output=null;
        while($e=mysqli_fetch_assoc($response)){
          $output[]=$e;
        }
        print(json_encode($output));
    }else{
        //$myObj->INVOICE_ID = "N00000000000000000000";
        //$myJSON = json_encode($myObj);
        //print(json_encode($myJSON));
        echo "^";
    }
    
    require_once('mysql_connection_close.php');
?>