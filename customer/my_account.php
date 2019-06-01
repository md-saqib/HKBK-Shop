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
						<a href ="index.php"><img id="logo" src="../images/logo.gif" />
						</div>
							<!--Header ends here-->
						
						<!--Navigation Bar Starts here-->	
						<div class ="menubar">

						<ul id="menu">
								<li><a href="../index.php">Home</a></li>
								<li><a href="../all_products.php">All Products</a></li>
								<li><a href="#">My Accounts</a></li>
								<li><a href="../customer_register.php">Sign Up</a></li>
								<li><a href="../cart.php">Shopping Cart</a></li>
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
											
											<div id="sidebar_title">My Profile</div>
							<ul id="cats">
							<?php
							$user = $_SESSION['customer_email'];
				
				$get_img = "select * from customers where customer_email='$user'";
				
				$run_img = mysqli_query($con, $get_img); 
				
				$row_img = mysqli_fetch_array($run_img); 
				
				$c_image = $row_img['customer_image'];
				
				$c_name = $row_img['customer_name'];
							echo "<p style='text-align:center;'><img src='customer_images/$c_image' width='150' height='150'/></p>";
							?>
							<li><a href= "my_account.php?my_orders">My Orders</a></li>
							<li><a href= "my_account.php?edit_account">Edit Account</a></li>
							<li><a href= "my_account.php?change_pass">Change Password</a></li>
							<li><a href= "my_account.php?delete_account">Delete Account</a></li>
							<ul>
							
							</div>
													<div id="content_area">
													
													<?php cart(); ?>
													
													
													<div id="shopping_cart">
													
													<span style="float:right; font-size:18px; padding:5px; line-height:40px;">
													<?php
													if(isset($_SESSION['customer_email'])){
														echo  $_SESSION['customer_email'] ;
													}
													
													?>
													
													<?php
													if(!isset($_SESSION['customer_email'])){
														echo "<a href='checkout.php' style='color:orange'>Login</a>";
													}
													
													else{
															echo "<a href='logout.php' style='color:orange'>Logout</a>";
													}
														
													?>
													</span>
													
													</div>
										
														<div id="products_box">
														
											
														<?php
														if(!isset($_GET['my_orders'])){
															if(!isset($_GET['edit_account'])){
																if(!isset($_GET['change_pass'])){
																	if(!isset($_GET['delete_account'])){
																		
														echo "
														<h2 style='padding:20px;'> Hello  $c_name  </h2><br>
														<b> Check your Orders <a href='my_account.php?my_orders'>here</a></b>";
																	}
																}
															}
														}
														?>
														
														<?php 
														if(isset($_GET['edit_account'])){
				include("edit_account.php");
				}
				if(isset($_GET['change_pass'])){
				include("change_pass.php");
				}
				if(isset($_GET['delete_account'])){
				include("delete_account.php");
				}
														?>
														</div>
										</div>
										</div>
						<!--Content Wrapper ends here-->
						
						
										<div id="footer">
										

										</div>
									</div>
						
	
	
	</body>

</html>
