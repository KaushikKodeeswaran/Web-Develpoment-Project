<?php
session_start();
?>
<?php
$servername = "127.0.0.1";
// $image = $_POST['image'];
echo "kaushik";
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

while($row = mysqli_fetch_array($result))
{
  $image = base64_encode($row['IMAGE']);
  $imawge = base64_decode($image);
  $image_src = "/webdevelopment/images/upload/".$imawge;

  echo $count;
  if($count%2 == 0)
  {
    echo "<br><br>";
  }



echo"
<div class='container'>
    <div class='row text-center py-5'>
      <div class='col-md-3 col-sm-6 my-3 my-md-0'>
          <div class='card shadow'>
              <img src='{$image_src}'  class='img-fluid card-img-top'>
          </div>
      </div>

      <div class='col-md-3 col-sm-6 my-3 my-md-0'>
          <div class='card shadow'>
              <img src='{$image_src}' class='img-fluid card-img-top'>
          </div>
      </div>
      <div class='col-md-3 col-sm-6 my-3 my-md-0'>
          <div class='card shadow'>
              <img src='{$image_src}' class='img-fluid card-img-top'>
          </div>
      </div>
      <div class='col-md-3 col-sm-6 my-3 my-md-0'>
          <div class='card shadow'>
              <img src='{$image_src}' class='img-fluid card-img-top'>
          </div>
      </div>
    </div>
</div>
";
$count = $count+1;
}
?>

<!-- mysqli_close($conn);
?> -->
