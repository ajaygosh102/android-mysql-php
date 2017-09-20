<?php
	require_once('mysql_connect.php');

    //now the procut_id will be an array
	$var_item_id=$_GET['product_id'];
    $var_customer_id=$_GET['customer_id'];
    $var_supermarket_id=$_GET['supermarket_id'];

    //generating invoice_id
    $query="select CUSTOMER_INVOICES from CUSTOMER where CUSTOMER_ID=".$var_customer_id;
    $response=@mysqli_query($dbc,$query);
    if($response){
        $var_customer_invoices=mysqli_fetch_object($response);
        $var_customer_invoices=(int)($var_customer_invoices->CUSTOMER_INVOICES);
        $var_customer_invoices=$var_customer_invoices+1;

        $var_invoice_id="C".str_pad($var_customer_id, 20, '0', STR_PAD_LEFT)."N".str_pad($var_customer_invoices, 8, '0', STR_PAD_LEFT); //generated invoice id
        
    }

    //echo $var_invoice_id;

    //execute queries for each product in PRODUCT - setting product status to 0
    foreach ($var_item_id as $arg_index => $product_id) {
        $query="update PRODUCT set PRODUCT_STATUS=0 where PRODUCT_ID=\"".$product_id."\"";
        //echo $query."<br>"; 
        $response=@mysqli_query($dbc,$query);
    }

    //execution on INVOICE
    foreach ($var_item_id as $arg_index => $product_id) {
        $query="insert into INVOICE(INVOICE_ID,PRODUCT_ID,INVOICE_DATE,SUPERMARKET_ID,CUSTOMER_ID,INVOICE_PAYMENT_METHOD,EMP_ID,INVOICE_TIME) values('".
            $var_invoice_id. "','" .$product_id. "','". date("Y/m/d") ."','". $var_supermarket_id."','".$var_customer_id."','VisaCard','APP','".date("h:i:s") ."')"
            ;
        //echo "<br>".$query."<br>"; 
        $response=@mysqli_query($dbc,$query);
    }    

    //updating customer_invoice
    $query="update CUSTOMER set CUSTOMER_INVOICES=(CUSTOMER_INVOICES+1) where CUSTOMER_ID=\"".$var_customer_id."\"";
    $response=@mysqli_query($dbc,$query);
    //WORKING
    
    require_once('mysql_connection_close.php');
?>