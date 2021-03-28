<?php
session_start();
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Checkout Page</title>

    <!-- <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">



    <!-- Bootstrap core CSS -->


    <link rel="stylesheet" href="/webdevelopment/css/checkout.css">
    <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <!-- Favicons -->



    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .sign{
        display: flex;
        justify-content: flex-end;
        padding-right: 10px;
        padding-top: 30px;
      }
      .s{
        display: flex;
        justify-content: space-between;
      }
    </style>


    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">

<div class="container">
  <main>
    <div class="s">
      <img src="/webdevelopment/images/logo.jpeg" alt="logo" height="150" width="200">
      <a class="sign" href="#">Logout</a>
    </div>
    <div class="py-5 text-center">
      <!-- <img class="d-block mx-auto mb-4" src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
      <h2>Checkout </h2>
      </div>

      <!-- <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p> -->


    <div class="row g-3">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-muted">Your cart</span>
          <span class="badge bg-secondary rounded-pill"><?php
              if (isset($_SESSION['cart'])){
                  $count  = count($_SESSION['cart']);
                  echo "$count";
              }else{
                  echo  "0";
              }
          ?>
        </span>
        </h4>
        <ul class="list-group mb-3">
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
                  }$Values = array();
                  $sql = "select * from products";
                  $result = mysqli_query($conn,$sql);
                  while ($row = mysqli_fetch_array($result)){
                      foreach ($product_id as $id){
                          if ($row['ID'] == $id){
                            $quantity = $_GET['quantityq'.$id];
                            $Values[] = $quantity;
                            ?>
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                              <div>
                                <h6 class="my-0"><?php echo $row['NAME'];?></h6>
                                <small class="text-muted">Brief description</small>
                              </div>
                              <span class="text-muted">Rs. <?php echo ($row['PRICE']*$quantity);?></span>
                            </li>
                            <?php
                              $total = $total + (int)$row['PRICE'];

                          }
                      }
                  }
              }

          ?>


          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">Promo code</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success">−Rs. 0</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (Rs)</span>
            <strong><?php echo $total;?></strong>
          </li>
        </ul>

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
      </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Billing address</h4>
        <form class="needs-validation" novalidate method="post" action="billingaddress.php">
          <?php foreach ($product_id as $id){ $a=0;$adate = date("Y-m-d H:i:s");?>

          <input type="hidden" name="Sid" value="<?php echo $id; ?>">
          <input type="hidden" name="Qty" value="<?php echo $Values[$a]; ?>">
          <input type="hidden" name="ddate" value=<?php echo $adate; ?>>

          <div class="row g-3">
          <?php }  $a++;?>
            <div class="col-sm-6">
              <label for="firstName"  class="form-label">First name</label>
              <input type="text" class="form-control" name="fname" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">Last name</label>
              <input type="text" class="form-control" name="lname" id="lastName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" name="email" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" name="add1" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" name="add2" id="address2" placeholder="Apartment or suite">
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">Country</label>
              <select class="form-select" name="country" id="country" required>
                <option value="">Choose...</option>
                <option>United States</option>
                <option value="AFGHANISTAN">AFGHANISTAN</option>
                <option value="ARMENIA">ARMENIA</option>
                <option value="AZERBAIJAN">AZERBAIJAN</option>
                <option value="BAHRAIN">BAHRAIN</option>
                <option value="BANGLADESH">BANGLADESH</option>
                <option value="BHUTAN">BHUTAN</option>
                <option value="BRUNEI">BRUNEI</option>
                <option value="CAMBODIA">CAMBODIA</option>
                <option value="CHINA">CHINA</option>
                <option value="CYPRUS">CYPRUS</option>
              </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">State</label>
              <select class="form-select" name="state" id="state" required>
                <option value="">Choose...</option>
                <option>California</option>
              </select>
              <div class="invalid-feedback">
                Please provide a valid state.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Zip</label>
              <input type="text" name="zip1" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
          </div>

          <hr class="my-4">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          </div>

          <hr class="my-4">

          <h4 class="mb-3">Payment</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" value="cash" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Cash</label>
            </div>
            <div class="form-check">
              <input id="credit" name="paymentMethod" value="credit" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Credit card</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" value="debit" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">Debit card</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" value="paypal" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">PayPal</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2020 - 2021 Product Deal India</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>


    <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

      <script src="form-validation.js"></script>
  </body>
</html>
