<?php
$server = "sql100.epizy.com";
$username="epiz_28511655";
$password="T6EPXYyZd9Vn9Np";
$dbname="epiz_28511655_ecom_store";

$con = mysqli_connect("localhost","root","","ecom_store");

if(!$con){
    die("Connection Failed:".mysqli_connect_error());
}
?>