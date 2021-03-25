<?php
// Create connection
$conn = mysqli_connect('127.0.0.1', 'root', '','product_deal_india');
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$username = $_POST['user'];
$password = $_POST['psw'];

$sql = "select * from seller;";
$check = 0;
$result = mysqli_query($conn,$sql);
$resultcheck = mysqli_num_rows($result);
if($resultcheck > 0)
{
  while ($row = mysqli_fetch_assoc($result)) {
    $uname = $row['USERNAME'];
    $upass = $row['PASSWORD'];
    if($uname == $username && $upass == $password)
    {
      //header("Location: success.php");

      $check = 1;
      header("Location: /webdevelopment/html/Seller.html");
    }
  }
  if($check!=1){
  echo "wrong username or password";
  }
}
mysqli_close($conn);
?>
