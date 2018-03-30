<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>4C Knowledge |Books</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Chronicle Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Custom Theme files -->
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<!-- shop css -->
	<link href="css/shop.css" type="text/css" rel="stylesheet" media="all">
	<!-- checkout css -->
	<link href="css/checkout.css" type="text/css" rel="stylesheet" media="all">
	<!-- Range-slider-css -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<!-- common-css -->
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<!-- font-awesome icons -->
	<link href="css/font-awesome.css" rel="stylesheet">

	<!-- //Custom Theme files -->
	<!-- online-fonts -->
	<!-- logo -->
	<link href="//fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
	<!-- titles -->
	<link href="//fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i" rel="stylesheet">
	<!-- body -->
	<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
	<!-- //online-fonts -->
</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<div id="home">
		<!-- header -->
		<!-- navbar -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="main-nav">
				<div class="container">

					<div class="navbar-header page-scroll">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
							<span class="sr-only">4C Knowledge</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1>
							<a class="navbar-brand" href="Home.jsp">4C Knowledge</a>
						</h1>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-ex1-collapse nav-right">
						<ul class="nav navbar-nav navbar-left cl-effect-15">
							<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
							<li class="hidden">
								<a class="page-scroll" href="#page-top"></a>
							</li>
							<li>
								<a href="HomeSystemuser.jsp">Home</a>
							</li>
							<!-- <li class="active">
								<a href="about.html">about us</a>
							</li>-->
							<!-- <li class="dropdown">
								<a href="#" class="dropdown-toggle effect-3" data-toggle="dropdown">shop
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="shop.html">product catalog</a>
									</li>
									<li>
										<a href="single_product.html">single product</a>
									</li>
									<li>
										<a href="checkout.html">checkout</a>
									</li>
									<li>
                                        <a href="payment.html">Payment</a>
                                    </li>
								</ul>
							</li>-->
							<!--<li class="dropdown">
								<a href="#" class="dropdown-toggle effect-3" data-toggle="dropdown">footers
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="footer.html">Default</a>
									</li>
									<li>
										<a href="footer1.html">variant1</a>
									</li>
									<li>
										<a href="footer2.html">variant2</a>
									</li>
									<li>
										<a href="footer3.html">variant3</a>
									</li>
									<li>
										<a href="footer4.html">variant4</a>
									</li>
								</ul>
							</li>-->
							<!-- <li>
								<a href="contact.html">Contact us</a>
							</li>-->
							<li>
								Log in As    <%=session.getAttribute("name")%>
							
							</li>
							<li>
                                <form action="logout" method="post">
                                	<input type="submit" style="background-color:rgb(52,198,99); background-repeat:no-repeat;overflow:hidden;outline:none; border:none;" value=Logout>
                                </form>
                            </li>
							<!-- <li>
								<a href="login.html" title="SignIn & SignUp">
									<span class="fa fa-user nav-icon" aria-hidden="true"></span>
								</a>
							</li>-->

						</ul>
						<!-- search-bar -->
						<!-- <div class="search-bar-agileits">
							<div class="cd-main-header">
								<ul class="cd-header-buttons">
									<li>
										<a class="cd-search-trigger" href="#cd-search">
											<span></span>
										</a>
									</li>
								</ul>-->
								<!-- cd-header-buttons -->
							<!-- </div>
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Type and Hit Enter...">
								</form>
							</div>
						</div>-->
						<!-- //search-bar ends here -->
						<!-- shopping cart -->
						<!-- <div class="cart-mainf">
							<div class="chrcart chrcart2 cart cart box_1">
								<form action="#" method="post" class="last">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="display" value="1">
									<button class="top_chr_cart" type="submit" name="submit" value="">
										<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
									</button>
								</form>
							</div>
						</div>-->
						<!-- //shopping cart ends here -->
					</div>
					<!-- /.navbar-collapse -->
					<div class="clearfix"></div>
				</div>
				<!-- /.container -->
			</div>
		</nav>
		<!-- //navbar ends here -->
		<!-- banner -->
		<div class="banner-bg-inner">
			<!-- banner-text -->
			<div class="banner-text-inner">
				<div class="container">
					<h2 class="title-inner">
						world of reading
					</h2>

				</div>
			</div>
			<!-- //banner-text -->
		</div>
		<!-- //banner -->
		<!-- breadcrumbs -->
		<div class="crumbs text-center">
			<div class="container">
				<div class="row">
					<ul class="btn-group btn-breadcrumb bc-list">
						<li class="btn btn1">
							<a href="index.html">
								<i class="glyphicon glyphicon-home"></i>
							</a>
						</li>
						<li class="btn btn2">
							<a href="shop.html">product catalogue</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--//breadcrumbs ends here-->
		<!-- Shop -->
		
<table border="5" bordercolor="transparent" align="center">
    
    
    
    <tr>
        <td border=4 height=100 width=300><img src="images/lib9.jpg"></th>
        <td border=4 height=100 width=300><img src="images/lib10.jpg"></th>
        <td border=4 height=100 width=300><img src="images/lib11.jpg"></th>
    </tr>
    <tr>
        <td width=300; height=50> Arts</th>
         <td width=300 height=50> Science Fictions</th>
          <td width=300 height=50> Politics</th>
    </tr>
    <tr>
        <td border=4 height=100 width=300><img src="images/lib12.jpg"></th>
        <td border=4 height=100 width=300><img src="images/lib13.jpg"></th>
        <td border=4 height=100 width=300><img src="images/lib8.jpg"></th>
    </tr>
    <tr>
        <td width=300 height=50>Religious Books</th>
         <td width=300 height=50> AI</th>
          <td width=300 height=50> Arts and Crafts</th>
    </tr>
    
    <tr>
        <td border=4 height=100 width=300><img src="images/lib4.jpg"></th>
        <td border=4 height=100 width=300><img src="images/lib1.jpg"></th>
        <td border=4 height=100 width=300><img src="images/lib2.jpg"></th>
    </tr>
    <tr>
        <td width=300 height=50> Commerce</th>
         <td width=300 height=50>Business</th>
          <td width=300 height=50>Story Books</th>
    </tr>
    
							
		
<!-- //home -->
	<!-- js -->
	<!-- Common js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!--// Common js -->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		chr.render();

		chr.cart.on('new_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- price range (top products) -->
	<script src="js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(function () {
			$("#slider-range").slider({
				range: true,
				min: 0,
				max: 9000,
				values: [50, 6000],
				slide: function (event, ui) {
					$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
				}
			});
			$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

		}); //]]>
	</script>
	<!-- //price range (top products) -->

	<!-- dropdown nav -->
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //dropdown nav -->
	<!--search jQuery-->
	<script src="js/main.js"></script>
	<!--search jQuery-->

	<!-- Scrolling Nav JavaScript -->
	<script src="js/scrolling-nav.js"></script>
	<!-- //fixed-scroll-nav-js -->
	<!--//scripts-->

	<script src="js/bootstrap.js"></script>
	<!-- start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

</body>

</html>