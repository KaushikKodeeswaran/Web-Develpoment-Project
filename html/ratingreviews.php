<php session_start(); ?>
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Online Shopping</title>
		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/bootstrap.min.css"/>

		<!-- Slick -->
		<!-- <link type="text/css" rel="stylesheet" href="/webdevelopment/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/slick-theme.css"/> -->

		<!-- nouislider -->
		<!-- <link type="text/css" rel="stylesheet" href="/webdevelopment/css/nouislider.min.css"/> -->

		<!-- Font Awesome Icon -->
		<!-- <link rel="stylesheet" href="/webdevelopment/css/font-awesome.min.css"> -->

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/style.css"/>
		<!-- <link type="text/css" rel="stylesheet" href="/webdevelopment/css/accountbtn.css"/> -->





		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    <style>
        #navigation {
          background: #FF4E50;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #F9D423, #FF4E50);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #F9D423, #FF4E50); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


        }
        #header {

            background: #780206;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #061161, #780206);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #061161, #780206); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


        }
        #top-header {


            background: #870000;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #190A05, #870000);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #190A05, #870000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


        }
        #footer {
            background: #7474BF;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #348AC7, #7474BF);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #348AC7, #7474BF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


          color: #1E1F29;
        }
        #bottom-footer {
            background: #7474BF;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #348AC7, #7474BF);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #348AC7, #7474BF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


        }
        .footer-links li a {
          color: #1E1F29;
        }
        .mainn-raised {

            margin: -7px 0px 0px;
            border-radius: 6px;
            box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);

        }

        .glyphicon{
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    }
    .glyphicon-chevron-left:before{
        content:"\f053"
    }
    .glyphicon-chevron-right:before{
        content:"\f054"
    }




        </style>

    </head>
		<!-- /BREADCRUMB -->
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

		<script>

    (function (global) {
	if(typeof (global) === "undefined")
	{
		throw new Error("window is undefined");
	}
    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";
		// making sure we have the fruit available for juice....
		// 50 milliseconds for just once do not cost much (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 50);
    };
	// Earlier we had setInerval here....
    global.onhashchange = function () {
        if (global.location.hash !== _hash) {
            global.location.hash = _hash;
        }
    };
    global.onload = function () {
		noBackPlease();
		// disables backspace on page except on input fields and textarea..
		document.body.onkeydown = function (e) {
            var elm = e.target.nodeName.toLowerCase();
            if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                e.preventDefault();
            }
            // stopping event bubbling up the DOM tree..
            e.stopPropagation();
        };
    };
})(window);
</script>

		<!-- SECTION -->
		<div class="section main main-raised">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->


					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">


								<li><a  href="#tab3">Rating & Review Summary</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->

								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">

										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->

								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">

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
													// $ext = $_SESSION['suser'];
													$prd = "SELECT * FROM products where sellerid=3";
													$result1 = mysqli_query($conn, $prd);
													$val = array();
													$count = 0;
															while($row1 = mysqli_fetch_array($result1))
															{

																$val[$count]=$row1['ID'];
																$count++;

															}

															foreach ($val as $value) {
																$sql = " SELECT * FROM ratingandreview WHERE Productid = $value";
																$result = mysqli_query($conn, $sql);
															while($row = mysqli_fetch_array($result))
															{
																$prd1 = "SELECT * FROM products where ID=$value";
																$result11 = mysqli_query($conn, $prd1);
																while($row11 = mysqli_fetch_array($result11))
																{
$ratingcur=$row['Star'];
																echo'<li>
																	<div class="review-heading">
																		<h5 class="name">'.$row['Customerid'].'</h5>
																		<h5 class="name">'.$row11['NAME'].'</h5>
																		<p class="date">'.$row['date'].'</p>';
																		if($ratingcur == 1){echo '
			 														 <div class="review-rating">
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 </div>';
			 														 }
			 														 if($ratingcur == 2){echo '
			 														 <div class="review-rating">
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 </div>';
			 														 }
			 														 if($ratingcur == 3){echo '
			 														 <div class="review-rating">
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 </div>';
			 														 }
			 														 if($ratingcur == 4){echo '
			 														 <div class="review-rating">
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star-o empty"></i>
			 														 </div>';
			 														 }
			 														 if($ratingcur == 5){echo '
			 														 <div class="review-rating">
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 <i class="fa fa-star"></i>
			 														 </div>';}
																	echo '</div>
																	<div class="review-body">
																		<p>'.$row['Review'].'</p>
																	</div></li>';
														}
													}
												}
														 ?>







												</ul>

											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->

									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>

</html>
