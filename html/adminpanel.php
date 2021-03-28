<?php
session_start();
?>
<!doctype html>
<html lang="en">
  <head>
  	<title>Sidebar 04</title>
    <meta charset="utf-8">
    <style media="screen">
      iframe{
        Border:none;
        width: 100%;
      }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="/webdevelopment/css1/style.css">
  </head>
  <body>

		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<!-- <div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	          <i class="fa fa-bars"></i>
	          <span class="sr-only">Toggle Menu</span>
	        </button>
        </div> -->

           <h1><a href="admindash.php" class="logo"  target="iframe1" frameBorder="0">Admin Panel</a></h1>
        <ul class="list-unstyled components mb-5">
          <li class="active">
            <a href="userremove.php" target ="iframe1"><span class="fa fa-home mr-3"></span> User</a>
<!--<iframe src="useraccount.html" width="100%" height="300">
</iframe>-->
          </li>
          <li>
              <a href="removeseller.php" target="iframe1" frameBorder="0"><span class="fa fa-user mr-3"></span> Seller</a>
          </li>
          <li>
              <a href="deleteproduct.php" target="iframe1" frameBorder="0"><span class="fa fa-user mr-3"></span> Remove Product</a>
          </li>
          <li>
            <a href="#" target="iframe1"><span class="fa fa-sticky-note mr-3"></span> Advertisement</a>
          </li>
          <li>
            <a href="admincontactusmessage.php" target="iframe1"><span class="fa fa-sticky-note mr-3"></span> Messages</a>
          </li>
          <li>
            <a href="adminannounce.php" target="iframe1"><span class="fa fa-sticky-note mr-3"></span> Announce</a>
          </li>
        </ul>

    	</nav>

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">

<iframe name="iframe1" src="admindash.php" width="100%" height="100%" ></iframe>
      </div>
		</div>

    <script src="/webdevelopment/js1/jquery.min.js"></script>
    <script src="/webdevelopment/js1/popper.js"></script>
    <script src="/webdevelopment/js1/bootstrap.min.js"></script>
    <script src="/webdevelopment/js1/main.js"></script>
  </body>
</html>
