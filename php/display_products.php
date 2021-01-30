<?php
$servername = "127.0.0.1";
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



$sql = "select * from products ";
$result = mysqli_query($conn,$sql);
$count = 10;
while($row = mysqli_fetch_array($result)){
  $image = base64_encode($row['IMAGE']);
  $imawge = base64_decode($image);
  $image_src = "/webdevelopment/images/upload/".$imawge;

  echo $count;
  if($count%2 == 0)
  {
    echo "<br><br>";
  }

  echo "<img src='{$image_src}'/> ";
// echo"
//
//     <div class='row text-center py-50'>
//       <div class='col-md-30 col-sm-63 my-33 my-md-110'>
//           <div class='card shadow'>
//           <img src='{$image_src}' class='img-fluid card-img-top' >
//           </div>
//           <div class='card-text'>
//             testing product
//           </div>
//       </div>
//     </div>
//
// ";
$count = $count+1;
// <div class='display_image'>
// <img src='{$image_src}' style='width:150px;height:150px;' ><br>
// </div>
}
?>

<!-- mysqli_close($conn);
?> -->
