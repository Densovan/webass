<?php 
$login_alert = '';
if(isset($_POST['login'])){
    
    $customer_email = $_POST['c_email'];
    
    $customer_pass = $_POST['c_pass'];
    
    $select_customer = "select * from customers where customer_email='$customer_email' AND customer_pass='$customer_pass'";
    
    $run_customer = mysqli_query($con,$select_customer);
    
    $get_ip = getRealIpUser();
    
    $check_customer = mysqli_num_rows($run_customer);
    
    $select_cart = "select * from cart where ip_add='$get_ip'";
    
    $run_cart = mysqli_query($con,$select_cart);
    
    $check_cart = mysqli_num_rows($run_cart);
    
    if($check_customer==0){
        
        $login_alert = '<center class="alert  alert-danger alert-dismissable">
        <strong>Failed!</strong> your email or password do not match .
      </center>';
        echo $login_alert;
        exit();
        
    }
    
    if($check_customer==1 AND $check_cart==0){
        
        $_SESSION['customer_email']=$customer_email;
        $_SESSION['customer_name']=$customer_name;
        
        $login_alert = '<center class="alert alert-success alert-dismissable">
        <strong>Success!</strong> logged in successfully .
      </center>';
        $_SESSION['login_msg'] = $login_alert;
       echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
        
    }else{
        
        $_SESSION['customer_email']=$customer_email;
        $_SESSION['customer_name']=$customer_name;
        
        $login_alert = '<center class="alert alert-success alert-dismissable">
        <strong>Success!</strong> You are logged in .
      </center>';
        $_SESSION["login_msg"]= $login_alert;
       echo "<script>window.open('checkout.php','_self')</script>";
        
    }
    
}

?>