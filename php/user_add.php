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
$sql = "INSERT INTO user (EMAIL,PASSWORD,PHONE_NUMBER,FIRST_NAME,LASTNAME,ADDRESS,PINCODE,username) VALUES ('$email', '$password','$phone','$fname', '$lname','$address','$pin','$username')";

if (!mysqli_query($conn, $sql)) {
  echo "not inserted";
}
else {
  echo "inserted";
};


mysqli_close($conn);
?>
