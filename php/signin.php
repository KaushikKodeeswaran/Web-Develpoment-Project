<?php
// Create connection
session_start();
$conn = mysqli_connect('127.0.0.1', 'root', '','product_deal_india');
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$username = $_POST['user'];
$password = $_POST['psw'];

$sql = "select * from user;";
$check = 0;
$result = mysqli_query($conn,$sql);
$resultcheck = mysqli_num_rows($result);
if($resultcheck > 0)
{
  while ($row = mysqli_fetch_assoc($result)) {
    $uname = $row['username'];
    $upass = $row['PASSWORD'];
    $id = $row['ID'];
    if($uname == $username && $upass == $password)
    {
      $_SESSION['user']=$uname;

      $_SESSION['id'] =$id;
      header("Location: /webdevelopment/html/index1.php");
      $check = 1;
    }
  }
  if($check!=1){
  header("Location: /webdevelopment/html/signin.php?Failed=Invalid username or password");
  }
}
mysqli_close($conn);
?>
