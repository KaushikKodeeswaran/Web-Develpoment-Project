<?php
$cookie_name = "username";
$cookie_value = "kaushik";
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/");
$cookie1_name = "password";
$cookie1_value = "password@123";
setcookie($cookie1_name, $cookie1_value, time() + (86400 * 30), "/");
$cookie2_name = "noofclicks";


if(isset($_COOKIE['noofclicks'])){
    $cookie2_value = $_COOKIE['noofclicks'];
    $cookie2_value++;
    setcookie($cookie2_name, $cookie2_value, time() + (86400 * 30), "/");
}
else{
  $cookie2_value = 0;
  setcookie($cookie2_name, $cookie2_value, time() + (86400 * 30), "/");
}

?>
<?php
session_start();
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

if (isset($_POST['add_to_cart'])){
     print_r($_POST['product_id']);
    if(isset($_SESSION['cart'])){

        $item_array_id = array_column($_SESSION['cart'], "product_id");

        if(in_array($_POST['product_id'], $item_array_id)){
            echo "<script>alert('Product is already added in the cart..!')</script>";
            echo "<script>window.location = 'index1.php'</script>";
        }else{

            $count = count($_SESSION['cart']);
            $item_array = array(
                'product_id' => $_POST['product_id']
            );

            $_SESSION['cart'][$count] = $item_array;
        }

    }else{

        $item_array = array(
                'product_id' => $_POST['product_id']
        );

        // Create new session variable
        $_SESSION['cart'][0] = $item_array;
        print_r($_SESSION['cart']);
    }
}


?>

<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/webdevelopment/css/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
.checked {
  color: orange;
}

/* body {
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
} */

/* @keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
} */
.advert{
  display: flex;
  padding-top: 40px;
}
.timer{
  display: flex;
  padding-left: 350px;
  padding-top: 10px;
  font-size: 30px;
  color: orange;
}
</style>
    <title> Product deal India</title>
    <!-- Google Analytics -->
<script>
function countClicks() {
		ClickCount++;
    setcookie($cookie_name, ClickCount, time() + (86400 * 30), "/");
}



(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-XXXXX-Y', 'auto');
ga('send', 'pageview');
</script>
<!-- End Google Analytics -->
  </head>
  <body onload="startTime();">
    <div class="container1">
      <div class="flex-box-container-1">
          <div class="image">
            <img src="/webdevelopment/images/logo.jpeg" alt="logo" height="150" width="200">
          </div>
          <div class="advert">


          <div class="image">
            <img id = "img1" src="/webdevelopment/images/2.jpg" alt="logo" height="150" width="600">
          </div>
          </div>
          <!-- <div >
            <img src="/webdevelopment/images/appl.png" alt="logo" height="150" width="200">
          </div> -->
          <div>
            <div class="sign" id="Username">
              <div >
                <?php require_once (realpath($_SERVER["DOCUMENT_ROOT"]).'/webdevelopment/php/header.php'); ?>
              </div>

              <div>
                <a  href="sellersignin.html">SELLER</a>
              </div>
                <!-- <div>
                  <a  href="mainsignup.html">SIGN UP</a>
                </div> -->
                <div>
                  <a  href="signin.php">LOGIN</a>
                </div>

            </div>
          </div>
      </div>
      <div class="timer">
        <strong><p id="demo"></p></strong>
      </div>

      <div class="searchbox">
        <div class="input-group">
            <div class="searchinput">
              <input type="text"  placeholder="Search" aria-label="Search" aria-describedby="search-addon"  >
              <button type="button" class="btn btn-outline-primary" >search</button>
            </div>
        </div>
      </div>
      <div class="navbar">
        <div class="topnav">
          <a href="electronics.php">ELECTRONICS</a>
          <a href="sports.php">SPORTS</a>
          <a href="clothing.php">CLOTHING</a>
          <a href="homefurniture.php">HOME&FURNITURE</a>
          <a href="books.php">BOOKS</CONTACT </a>
          <a href="contactus.php">CONTACT US</a>
        </div>
      </div>
      <br>

      <div class="imagecontainer">
        <?php
          $sql = "select * from products ";
          $result = mysqli_query($conn,$sql);
          $count = 10;

          while($row = mysqli_fetch_array($result))
          {
                $image = base64_encode($row['IMAGE']);
                $imawge = base64_decode($image);
                $image_src = "/webdevelopment/images/upload/".$imawge;
        ?>

            <form method="post" action="index1.php">
                            <div class="product" >
                              <div class="productimages">
                                <img src="<?php echo $image_src; ?>" class="img-responsive"  /><br />
                              </div>
                                 <br><br><br><br><br><br><h4 class="text-info"><?php echo $row["NAME"]; ?></h4>
                                 <h4 class="text-danger">  ₹ <?php echo $row["PRICE"]; ?></h4>
                                 <!-- <input type="hidden" name="hidden_name" value="<?php echo $row["NAME"]; ?>" />
                                 <input type="hidden" name="hidden_price" value="<?php echo $row["PRICE"]; ?>" /> -->
                                 <h4>Star Rating</h4>
                                 <div class="">
                                   <span class="fa fa-star checked"></span>
                                   <span class="fa fa-star checked"></span>
                                   <span class="fa fa-star checked"></span>
                                   <span class="fa fa-star"></span>
                                   <span class="fa fa-star"></span>
                                 </div>
                                 <input type="hidden" name="product_id" value="<?php echo $row['ID']; ?>" >
                                 <input type="submit" name="add_to_cart" style="margin-top:50px;" class="btn btn-success" value="Add to Cart" />

                            </div>
             </form>
             <br>
        <?php
          }
        ?>
      </div>

      <!-- <div class="container">
          <div class="row text-center py-5">
            <div class="col-md-3 col-sm-6 my-3 my-md-0">
                <div class="card shadow">
                    <img src="/webdevelopment/images/logo.jpeg" alt="" class="img-fluid card-img-top">
                </div>
            </div>

            <div class="col-md-3 col-sm-6 my-3 my-md-0">
                <div class="card shadow">
                    <img src="/webdevelopment/images/logo.jpeg" alt="" class="img-fluid card-img-top">
                </div>
            </div>
            <div class="col-md-3 col-sm-6 my-3 my-md-0">
                <div class="card shadow">
                    <img src="/webdevelopment/images/logo.jpeg" alt="" class="img-fluid card-img-top">
                </div>
            </div>
            <div class="col-md-3 col-sm-6 my-3 my-md-0">
                <div class="card shadow">
                    <img src="/webdevelopment/images/logo.jpeg" alt="" class="img-fluid card-img-top">
                </div>
            </div>
          </div>
      </div>-->
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    <footer class="bg-light text-center text-lg-start">
      <!-- Grid container -->
      <div class="container p-4">
        <!--Grid row-->
        <div class="row">
          <!--Grid column-->
          <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
            <h5 class="text-uppercase">Get to Know Us</h5>

            <p>
              <br>
              About Us<br>
              Careers<br>
              Press Releases<br>
              Amazon Cares<br>
              Gift a Smile<br>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->

          <!--Grid column-->
          <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
            <h5 class="text-uppercase mb-0">Connect with Us</h5><BR><br>

            <ul class="list-unstyled">
              <li>
                <a href="#!" class="text-dark">Youtube</a><br>
              </li>
              <li>
                <a href="#!" class="text-dark">Facebook</a><br>
              </li>
              <li>
                <a href="#!" class="text-dark">Twitter</a>
              </li>
            </ul>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
        <div class="flexbox2">
          <div class="">
            <video width="300" controls>
              <source src=".mp4" type="video/mp4">
              <source src=".ogg" type="video/ogg">
            </video>
          </div>
          <!-- <div class="">
            <img src="/webbdevelopment/images/footer.png" height="100" width="200">
          </div> -->
        </div>

      </div>
      <!-- Grid container -->

      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
        © 2020 Copyright:
        <a class="text-dark" href="https://mdbootstrap.com/">Product Deal India</a>
      </div>
      <!-- Copyright -->
    </footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" integrity="sha256-qM7QTJSlvtPSxVRjVWNM2OfTAz/3k5ovHOKmKXuYMO4=" crossorigin="anonymous"></script>
    <script language="javascript" type="text/javascript">
var timerid = 0;
var images = new Array(	"/webdevelopment/images/2.jpg",
			"/webdevelopment/images/3.jpg",
			"/webdevelopment/images/4.jpg","/webdevelopment/images/5.jpg","/webdevelopment/images/6.jpg","/webdevelopment/images/7.jpg");
var countimages = 0;
function startTime()
{
	if(timerid)
	{
		timerid = 0;
	}
	var tDate = new Date();

	if(countimages == images.length)
	{
		countimages = 0;
	}
	if(tDate.getSeconds() % 5 == 0)
	{
		document.getElementById("img1").src = images[countimages];
	}
	countimages++;

	timerid = setTimeout("startTime()", 1000);
}
</script>
<script>
// Set the date we're counting down to
var countDownDate = new Date("Jan 5, 2022 15:37:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = "Deals of the Day  :" + hours + "h "
  + minutes + "m " + seconds + "s Left";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>
<script async src="https://www.googletagmanager.com/gtag/js?id=TRACKING_ID"></script>


  </body>
</hmtl>
