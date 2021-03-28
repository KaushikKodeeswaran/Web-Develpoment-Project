<?php
$servername = "127.0.0.1";
$phone = $_POST['phone'];
$username = $_POST['username'];
$password = $_POST['pwd'];
$email = $_POST['email'];
$fname = $_POST['firstname'];
$lname = $_POST['lastname'];
$address = $_POST['address'];
$pin = $_POST['pin'];


// Create connection
$conn = mysqli_connect('127.0.0.1', 'root', '');
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'product_deal_india'))
{
  echo "not selected";
}
session_start();
$id = $_SESSION['id'];
$sql = "update user set EMAIL='$email',PASSWORD='$password',PHONE_NUMBER='$phone',FIRST_NAME='$fname',LASTNAME='$lname',ADDRESS='$address',PINCODE='$pin',username='$username' where ID=$id";
echo $sql;
if (!mysqli_query($conn, $sql)) {
  echo "not inserted";
}
else {
  header("location:/webdevelopment/html/editaccdetail.php");
};
?>
