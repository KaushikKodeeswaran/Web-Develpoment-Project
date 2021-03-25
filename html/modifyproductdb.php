<?php
$servername = "127.0.0.1";
$selectedname = $_POST['sname'];
$name= $_POST['name'];
$description= $_POST['description'];
$price= $_POST['price'];
$category= $_POST['category'];
$brand= $_POST['brand'];

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
 $query = "update products set NAME='$name',PRODUCT_DESCRIPTION='$description',PRICE='$price',CATEGORY='$category',BRAND='$brand' where NAME='$selectedname';";

if (!mysqli_query($conn, $query)) {
  echo "not inserted";
}
else {
  echo "inserted";
}


?>
