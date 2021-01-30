<?php
$servername = "127.0.0.1";
$phone = $_POST['phone'];
$username = $_POST['username'];
$password = $_POST['pwd'];
$email = $_POST['email'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$storename = $_POST['store'];
$add1 = $_POST['Street1'];
$add2 = $_POST['Street2'];
$city = $_POST['city'];
$state = $_POST['state'];
$country = $_POST['country'];
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
$sql = "INSERT INTO seller (STORE_NAME,ADD1,ADD2,CITY,STATE,COUNTRY,ZIP,PHONE,EMAIL,USERNAME,PASSWORD,FNAME,LNAME) VALUES ('$storename','$add1','$add2','$city','$state','$country','$pin','$phone','$email','$username', '$password','$fname','$lname')";

if (!mysqli_query($conn, $sql)) {
  echo "not inserted";
}
else {
  echo "inserted";
};


mysqli_close($conn);
?>
