<?php
$servername = "127.0.0.1";
$selectedname = $_POST['sname'];


$conn = mysqli_connect('127.0.0.1', 'root', '');
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'product_deal_india'))
{
  echo "not selected";
}

// Insert record
 $query = "delete from user where username='$selectedname'";

if (!mysqli_query($conn, $query)) {
  echo "not inserted";
}
else {
  header("location:/webdevelopment/html/adminpanel.php");
}


?>
