<!DOCTYPE>
<?php
session_start();
include("functions/functions.php");


?>

<html>

	<head>

		<title>HKBKShop | HKBK's Online Shopping Site</title>
		<link rel="stylesheet" href="styles/style.css" media="all" />
	</head>
	
	
	<body>
	<!--Main Wrapper Starts here-->

				<div class="main_wrapper">  
						

							<!--Header Starts here-->
						<div class="header_wrapper">
						<a href ="index.php"><img id="logo" src="images/logo.gif" />
						</div>
							<!--Header ends here-->
						
						<!--Navigation Bar Starts here-->	
						<div class ="menubar">

						<ul id="menu">
								<li><a href="index.php">Home</a></li>
								<li><a href="all_products.php">All Products</a></li>
								<li><a href="customer/my_account.php">My Accounts</a></li>
								<li><a href="customer_register.php">Sign Up</a></li>
								<li><a href="cart.php">Shopping Cart</a></li>
								<li><a href="about.php">About</a></li>
							</ul>
							
							<div id="form">
								<form method="get" action="results.php"  enctype="multipart/form-data">
									<input type="text" name="user_query" placeholder="Search a Product" / >
									<input type="submit" name="search" value="Search" />
								</form>
							</div>
							
							
							</div>
						<!--Navigation Bar ends here-->

						<!--Content Wrapper Starts here-->
									<div class="content_wrapper">
										<div id="sidebar">
											
											<div id="sidebar_title">Categories</div>
							<ul id="cats">
								<?php getCats(); ?>
							
							
							<div id="sidebar_title">Brands</div>
							<ul id="cats">
								 <?php getBrands(); ?>
								 
							<ul>
										
										</div>
													<div id="content_area">
													
													<?php cart(); ?>
													
													
													<div id="shopping_cart">
													
													<span style="float:right; font-size:18px; padding:5px; line-height:40px;">
													
													<?php
													if(isset($_SESSION['customer_email'])){
														echo "<b>Hello </b>" . $_SESSION['customer_email'] ;
													}
														else {
															echo "<b>Welcome Guest!</b>";
													}
													?>
													
													<b style="color:yellow"> Shopping Cart -</b> Total Items: <?php total_items() ;?> Total Price: <?php total_price(); ?> <a href="cart.php"
													style="color:yellow">Go to Cart</a>
													
													</span>
													
													</div>
															<p>
															<p style="text-align:center;"><img src="campus.jpg" width="660" height="440"/></p>
															<p style="text-align:center;"><font size="6"><a href="index.php" style='color:black' ><b>HKBK Shop</b> </a></font></p><br>
															<font size="5">This is a project for <b>Online Shopping System</b>. The Basic idea is to design and develop an Online Shopping site to manage products 
															and help customers buy products online. This is a web based application which helps people find and buy latest products<br>
															<a href="index.php" style='color:black' ><b>HKBK Shop</b> </a> is the online e-commerce site which allows users to browse the latest product catalog and place an order online. 
															Currently only cash on delivery is supported.
															</font>
															
															<div class="img-with-text">
															<br><img src="creator.jpg" width="100" height="100" style="margin: 0px 20px"/>
															<p><a href="creator.php" style='color:black'><b style="margin: 0px 15px">About Developer</b> </a></p>
															</div>
															</p>
														
														
														
														</div>
										
										</div>
						<!--Content Wrapper ends here-->
						
						
										<div id="footer">
										
										
										</div>
									</div>
						
	
	
	</body>

</html>