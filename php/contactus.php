<?php
session_start();
$servername = "127.0.0.1";
$name = $_POST['firstname'];
$lname = $_POST['lastname'];
$country = $_POST['country'];
$sub = $_POST['subject'];
$time = date("Y-m-d h:i:sa");

// $image = $_POST['image'];
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

  if(isset($_POST['submit']))
  {
        $query = "INSERT INTO message_admin (FIRSTNAME,LASTNAME,COUNTRY,SUBJECT,TIME) VALUES ('$name', '$lname','$country','$sub','$time')";

       if (!mysqli_query($conn, $query)) {
         echo "not inserted";
       }
       else {
         echo "inserted";
       };


    }


else {
  echo "not submited";
}


?>
