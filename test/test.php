<?php
$servername = "127.0.0.1";
$name = $_POST['name'];
$description = $_POST['description'];
$brand = $_POST['brand'];
$category = $_POST['category'];
$price = $_POST['price'];
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

     $image = $_FILES['image']['name'];
     $target_dir = $_SERVER['DOCUMENT_ROOT'] . "/webdevelopment/images/upload/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    $extensions_arr = array("jpg","jpeg","png","gif");

    if( in_array($imageFileType,$extensions_arr) ){

     // Insert record
      $query = "select * from products";

     if (!mysqli_query($conn, $query)) {
       echo "not inserted";
     }
     else {
       echo "inserted";
     };

     // Upload file
    //echo $_FILES['image']['tmp_name'];
     move_uploaded_file($_FILES['image']['tmp_name'],$target_dir.$image);

  }

}
else {
  echo "not submited";
}

mysqli_close($conn);
?>
