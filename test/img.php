
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


 echo"
   <section class='products'>


  <div class='product-card'>
    <div class= 'product-image'>
      <img src='{$image_src}'>
    </div>
    <div class='product-info'>
      <h5>Winter Jacket</h5>
      <h6>$99.99</h6>
    </div>
  </div>

  <!-- more products -->

</section>
 ";
$count = $count+1;
// <div class='display_image'>
// <img src='{$image_src}' style='width:150px;height:150px;' ><br>
// </div>
}
?>

<!-- mysqli_close($conn);
?> -->
