<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Online Shopping</title>
<?php include("headre.php"); ?>
		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="/webdevelopment/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="/webdevelopment/css/accountbtn.css"/>





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

								$product_id = $_GET['ID'];


								$sql = " SELECT * FROM products WHERE ID = $product_id";

								$result = mysqli_query($conn, $sql);

									while($row = mysqli_fetch_array($result))
									{
										$image = base64_encode($row['IMAGE']);
										$imawge = base64_decode($image);
										$image_src = "/webdevelopment/images/upload/".$imawge;
									echo '
                                <div class="col-md-5 col-md-push-2">
                                <div id="product-main-img">
                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>

                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>

                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>

                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>
                                </div>
                            </div>

                                <div class="col-md-2  col-md-pull-5">
                                <div id="product-imgs">
                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>

                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>

                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>

                                    <div class="product-preview">
                                        <img src="'.$image_src.'" alt="">
                                    </div>
                                </div>
                            </div>


									';


									echo '



                    <div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">'.$row['NAME'].'</h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#review-form">10 Review(s) | Add your review</a>
							</div>
							<div>
								<h3 class="product-price">Rs.'.$row['PRICE'].'<del class="product-old-price"></del></h3>
								<span class="product-available">In Stock</span>
							</div>
							<p>'.$row['PRODUCT_DESCRIPTION'].'</p>

							<div class="product-options">
								<label>
									Size
									<select class="input-select">
										<option value="0">X</option>
									</select>
								</label>
								<label>
									Color
									<select class="input-select">
										<option value="0">Red</option>
									</select>
								</label>
							</div>

							<div class="add-to-cart">
								<div class="qty-label">
									Qty
									<div class="input-number">

										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
								<div class="btn-group" style="margin-left: 25px; margin-top: 15px">
								<button class="add-to-cart-btn" pid="'.$row['ID'].'"  id="product" ><i class="fa fa-shopping-cart"></i> add to cart</button>
                                </div>


							</div>

							<ul class="product-btns">
								<li><a href="#"><i class="fa fa-heart-o"></i> add to wishlist</a></li>
								<li><a href="#"><i class="fa fa-exchange"></i> add to compare</a></li>
							</ul>

							<ul class="product-links">
								<li>Category:</li>
								<li><a href="#">Headphones</a></li>
								<li><a href="#">Accessories</a></li>
							</ul>

							<ul class="product-links">
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul>

						</div>
					</div>


					<!-- /Product main img -->

					<!-- Product thumb imgs -->



					<!-- /Product thumb imgs -->

					<!-- Product details -->

					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>

								<li><a data-toggle="tab" href="#tab3">Reviews (3)</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<p>Description from database</p>
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>good</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">User 2</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Nice product</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">User 3</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>testing third</p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3 mainn">
											<div id="review-form">
												<form class="review-form">
													<input class="input" type="text" placeholder="Your Name">
													<input class="input" type="email" placeholder="Your Email">
													<textarea class="input" placeholder="Your Review"></textarea>
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn">Submit</button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
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

                 ';} ?>
							 </footer>
							 <script src="/webdevelopment/js/jquery.min.js"></script>
							 <script src="/webdevelopment/js/bootstrap.min.js"></script>
							 <script src="/webdevelopment/js/slick.min.js"></script>
							 <script src="/webdevelopment/js/nouislider.min.js"></script>
							 <script src="/webdevelopment/js/jquery.zoom.min.js"></script>
							 <script src="/webdevelopment/js/main.js"></script>
							 <script src="/webdevelopment/js/actions.js"></script>
							 <script src="/webdevelopment/js/sweetalert.min"></script>
							 <script src="/webdevelopment/js/jquery.payform.min.js" charset="utf-8"></script>
								<script src="/webdevelopment/js/script.js"></script>
							 <script>var c = 0;
										function menu(){
											if(c % 2 == 0) {
												document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu active";
												document.querySelector('.cont_icon_trg').className = "cont_icon_trg active";
												c++;
													}else{
												document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu disable";
												document.querySelector('.cont_icon_trg').className = "cont_icon_trg disable";
												c++;
													}
										}


						</script>
								 <script type="text/javascript">
								 $('.block2-btn-addcart').each(function(){
								 	var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
								 	$(this).on('click', function(){
								 		swal(nameProduct, "is added to cart !", "success");
								 	});
								 });

								 $('.block2-btn-addwishlist').each(function(){
								 	var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
								 	$(this).on('click', function(){
								 		swal(nameProduct, "is added to wishlist !", "success");
								 	});
								 });
								 </script>
</html>
