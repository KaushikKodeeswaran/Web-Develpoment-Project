<?php
session_start();
?>
<?php
$servername = "127.0.0.1";
$username = $_POST['username'];
$password = $_POST['password'];


$conn = mysqli_connect('127.0.0.1', 'root', '');

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'demo'))
{
  echo "not selected";
}

if(isset($_POST['submit']))
{
  $sql = "select * from login where username ='$username' and password = '$password'; ";
  $result = mysqli_query($conn,$sql);
  if(!$result){
    echo ("error description :" .mysqli_error($conn));
    exit();
  }
  while ($row = mysqli_fetch_assoc($result)) {
      echo 'BANK DETAILS  : '.$row["id"];
    }



}

mysqli_close($conn);
?>
