<?php

session_start();
?>
<script>
function plus($id){
  var userInput = document.getElementById("quantity"+$id).value;
if(userInput<9){
  userInput = parseInt(userInput) + 1;
}
  document.getElementById("quantity"+$id).value = userInput;
}
function minus($id){
  var userInput = document.getElementById("quantity"+$id).value;
  if(parseInt(userInput)!=1){
  userInput = parseInt(userInput - 1);}
  document.getElementById("quantity"+$id).value = userInput;
}

</script><?php
require_once (realpath($_SERVER["DOCUMENT_ROOT"])."/webdevelopment/php/CreateDb.php");
require_once (realpath($_SERVER["DOCUMENT_ROOT"]).'/webdevelopment/php/component.php');


if (isset($_GET['action'])){
  if ($_GET['action'] == 'remove'){
      foreach ($_SESSION['cart'] as $key => $value){
          if($value["product_id"] == $_GET['id']){
              unset($_SESSION['cart'][$key]);
              echo "<script>alert('Product has been Removed...!')</script>";
              echo "<script>window.location = 'cart.php'</script>";
          }
       }
  }
}


?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <title>Cart</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.css" />

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">
</head>
<body class="bg-light">

<?php
    require_once (realpath($_SERVER["DOCUMENT_ROOT"]).'/webdevelopment/php/header.php');
?>
<form action="/webdevelopment/html/checkout.php" method="get">
<div class="container-fluid">
    <div class="row px-5">
        <div class="col-md-7">
            <div class="shopping-cart">
                <h6>My Cart</h6>
                <hr>

                <?php

                $total = 0;
                    if (isset($_SESSION['cart'])){
                        $product_id = array_column($_SESSION['cart'],'product_id');
                        // $db = new CreateDb;
                        // $result = $db->getData();
                        $conn = mysqli_connect('127.0.0.1', 'root', '');
                        if (!$conn) {
                          die("Connection failed: " . mysqli_connect_error());
                        }

                        if(!mysqli_select_db($conn,'product_deal_india'))
                        {
                          echo "not selected";
                        }
                        $sql = "select * from products";
                        $result = mysqli_query($conn,$sql);
                        while ($row = mysqli_fetch_array($result)){
                            foreach ($product_id as $id){
                                if ($row['ID'] == $id){
                                  $image = base64_encode($row['IMAGE']);
                                  $imawge = base64_decode($image);
                                  $image_src = "/webdevelopment/images/upload/".$imawge;
                                    cartElement($image_src, $row['NAME'],$row['PRICE'], $row['ID']);
                                    $total = $total + (int)$row['PRICE'];
                                }
                            }
                        }
                    }else{
                        echo "<h5>Cart is Empty</h5>";
                    }

                ?>

            </div>
        </div>
        <div class="col-md-4 offset-md-1 border rounded mt-5 bg-white h-25">

            <div class="pt-4">
                <h6>PRICE DETAILS</h6>
                <hr>
                <div class="row price-details">
                    <div class="col-md-6">
                        <?php
                            if (isset($_SESSION['cart'])){
                                $count  = count($_SESSION['cart']);
                                echo "<h6>Price ($count items)</h6>";
                            }else{
                                echo "<h6>Price (0 items)</h6>";
                            }
                        ?>
                        <h6>Delivery Charges</h6>
                        <hr>
                        <h6>Amount Payable</h6>
                    </div>
                    <div class="col-md-6">
                        <h6>Rs.<?php echo $total; ?></h6>
                        <h6 class="text-success">FREE</h6>
                        <hr>
                        <h6>Rs.<?php
                            echo $total;
                            ?></h6>
                    </div>
                </div>
            </div><a href="/webdevelopment/html/checkout.php">
<button  class="w-100 btn btn-primary btn-lg" type="submit">Proceed to checkout</button></a>
</form>
        </div>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
