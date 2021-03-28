<?php
session_start();
?>
<?php

$servername = "127.0.0.1";
// $image = $_POST['image'];
// Create connection
$fname=$_POST["fname"];
$lname=$_POST["lname"];
$email=$_POST["email"];
$add1=$_POST["add1"];
$add2=$_POST["add2"];
$country=$_POST["country"];
$state=$_POST["state"];
$zip=$_POST["zip1"];
$pm=$_POST["paymentMethod"];
$conn = mysqli_connect('127.0.0.1', 'root', '');
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'product_deal_india'))
{
  echo "not selected";
}
$cid = $_SESSION['id'];

$sql = "INSERT INTO billinginfo (fname,lastname,email,add1,add2,country,state,zip,payment,Customerid) VALUES ('$fname', '$lname','$email','$add1', '$add2','$country','$state','$zip','$pm','$cid')";

if (!mysqli_query($conn, $sql)) {
  echo "not inserted";
}
else {

};
          $Sid=$_POST['Sid'];
          $qty=$_POST['Qty'];
          $Ddate=$_POST['ddate'];

$sql = "INSERT INTO order1 (Cid,Sid,Qty,Date) VALUES ('$cid','$Sid','$qty','$Ddate')";

if (!mysqli_query($conn, $sql)) {
  echo "not inserted";
}
else {
  session_destroy();
  header("location:successfulcheckout.php");

};

?>
