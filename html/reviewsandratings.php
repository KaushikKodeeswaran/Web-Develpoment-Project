<?php

$servername = "127.0.0.1";

$conn = mysqli_connect('127.0.0.1', 'root', '');

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'product_deal_india'))
{
  echo "not selected";
}
if(isset($_POST["submit"])){
$date = $_POST["date"];
$productid = $_POST["productid"];
$review = $_POST["review"];
$rating = $_POST["rating"];
$customer = $_SESSION['id'];
$query = "INSERT INTO ratingandreview (Customerid,Productid,Star,Review,date) VALUES ('$customer','$productid','$rating','$review','$date')";

if (!mysqli_query($conn, $query)) {
 echo "not inserted";
}
else {
  header("location:/webdevelopment/html/clickproductopen.php?ID=".$productid);
};
}

?>
