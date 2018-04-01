<%-- 
    Document   : index
    Created on : 17 Mar, 2018, 7:06:24 PM
    Author     : hp
--%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Musicality an Entertainment Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Musicality Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- gallery -->
<link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
<!-- //gallery -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />

<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- banner -->
<div class="banner_top" id="home">
	<div class="banner_agile_top">
			<div class="w3_agile_header">
						<div class="w3_agileits_logo">
								<h1><a href="index.html">Musicality <span>Sounds made by voices </span></a></h1>
							</div>
							<div class="w3_menu">

							
								<div class="overlay overlay-contentpush">
								 <button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>
<%
    Object o=session.getAttribute("username");
%>
								<nav>
									<ul>
										<li><a href="#home" class="active scroll" >Home</a></li>
										<li><a href="#about" class="scroll">About</a></li>
										<!--<li><a href="#team" class="scroll" >Our Artists</a></li>-->
<!--										<li><a href="#services" class="scroll" >Services</a></li>-->
										<li><a href="index.jsp" >Gallery</a></li>
										<li><a href="#contact" class="scroll" >Contact</a></li>
                                                                                <% if(o == null){ %>
                                                                               <li><a href="UserSeePage.jsp"  >Login</a></li>
                                                                              <%   }
                                                                                  else{        %>
                                                                                                                                                            <li><a href="logout.jsp"  >Logout</a></li>
<%}
%>
									</ul>
								</nav>
							</div>
								<div class="mobile-nav-button">
								<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>

								</div>
							
						</div>

					<div class="clearfix"></div>
			    </div>
				<!-- banner-text -->
				<div class="agileits-banner-info">
											<p class="w3_text">Design by w3layouts</p>
												<h3 class="w3ls_agile">The 
												Sweetest music this side of heaven.</h3>

											<div class="w3_agileits_social_media ">
				
												<ul class="social-icons3">
													<li class="agileinfo_share">Share On</li>
													<li><a href="#" class="wthree_facebook"> <i class="fa fa-facebook" aria-hidden="true"></i></a></li>
													<li><a href="#" class="wthree_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
													<li><a href="#" class="wthree_dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
													<li><a href="#" class="wthree_rss"><i class="fa fa-rss"></i></a></li>
												</ul>
											</div>	
													</div>
				<!--banner Slider starts Here-->
			

		</div>
</div>
<!-- //banner -->
<!--/welcome-->
		    <div class="w3agile welcome" id="about"> 
						<div class="container">
						<h3 class="wthree_head">About US <span>Sounds made by voices</span></h3>
					<div class="w3l_gallery_grids">
			<div class="col-md-6 banner_bottom_left">
				<h3>Welcome to Musicality</h3>
				<p><i>Ut enim ad minima veniam</i> Quis nostrum exercitationem ullam corporis suscipit 
					laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure 
					reprehenderit qui in ea voluptate.
					vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
				<div class="read"><a href="#" data-toggle="modal" data-target="#myModal" class="hvr-rectangle-in">Read More</a></div>
			</div>
			<div class="col-md-6 banner_bottom_right">
					<div class="agile_w3l_info_gds">
						<div class="banner_bottom_right_grid">
							<div class="view view-tenth">
							<img src="images/a1.jpg" class="img-responsive" alt="">
								
								<div class="mask">
									 <a href="#">
										  <div class="agile_text_box">
												<i class="fa fa-music" aria-hidden="true"></i>
												<h3>Latest</h3>
												
										  </div>
									 </a>
								</div>
							</div>
						</div>
						<div class="banner_bottom_right_grid">
							<div class="view view-tenth">
							<img src="images/a2.jpg" class="img-responsive" alt="">
								
								<div class="mask">
								   <a href="newhtml.html">
										<div class="agile_text_box">
										<i class="fa fa-music" aria-hidden="true"></i>
                                                                                <h3>Bollywood</h3>
											
										</div>
									</a>
								</div>
							</div>
						</div>
					   <div class="clearfix"> </div>
					</div>
					<div class="agile_w3l_info_gds two">
						<div class="banner_bottom_right_grid">
							<div class="view view-tenth">
							<img src="images/a3.jpg" class="img-responsive" alt="">
								
								<div class="mask">
									 <a href="#">
										  <div class="agile_text_box">
												<i class="fa fa-music" aria-hidden="true"></i>
												<h3>Latest</h3>
												
										  </div>
									 </a>
								</div>
							</div>
						</div>
						<div class="banner_bottom_right_grid">
							<div class="view view-tenth">
							<img src="images/a4.jpg" class="img-responsive" alt="">
								
								<div class="mask">
								   <a href="#">
										<div class="agile_text_box">
										<i class="fa fa-music" aria-hidden="true"></i>
										<h3>Bollywood</h3>
											
										</div>
									</a>
								</div>
							</div>
						</div>
					   <div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>	
				</div>
		<!--//welcome-->
		<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<div class="signin-form profile">
						<h3 class="agileinfo_sign">Musicality</h3>	
                                                <div class="modal-body"><table>
                                                        <tr><td>  <img src="images/g1.jpg"  style="max-width: 85%; margin-left: 30%;height: 130px" alt=" " id="deep"  class="img-responsive" /></td>&nbsp&nbsp&nbsp<td> <img src="images/g1.jpg"  style="max-width: 85%; height: 130px; padding-left: px; margin-left: 20%" alt=" " id="deep"  class="img-responsive" /></td></tr></br></br>
                                                        <tr><td style="padding-left: 90px"><i>Deepak Agrwal</i></td><td style="padding-left: 100px">Ashwin Shrivastav</td></tr>
                                                        <br>
                                                        <br>
                                                        <tr><td style="padding-left: 90px"><i>CS 3rd Year</i></td><td style="padding-left: 100px">CS 3rt Year</td></tr>

                                                    </table>
						<p>Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
					</div>
				</div>
			</div>
		</div>
	</div>
			 

<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<h3 class="wthree_head">Services We Do<span>Sounds made by voices</span></h3>
			<div class="w3l_gallery_grids">
			  <div class="col-md-7 agileinfo_services_grids">
				<div class="col-md-6 agileinfo_services_grid">
					<div class="agileinfo_services_grid_right">
						<h4><i class="fa fa-briefcase" aria-hidden="true"></i></h4>
					</div>
					<div class="agileinfo_services_grid_left">
						<h4>Proffesional</h4>
					</div>

					<div class="clearfix"> </div>
					<p>Aliquam ex orci, dapibus eu facilisis non, scelerisque id nisl. 
						Praesent at tincidunt nisi. Aliquam molestie sem a purus pharetra.</p>
				</div>
				<div class="col-md-6 agileinfo_services_grid">
					<div class="agileinfo_services_grid_right">
						<h4><i class="fa fa-volume-up" aria-hidden="true"></i></h4>
					</div>
					<div class="agileinfo_services_grid_left">
						<h4>Narrating</h4>
					</div>

					<div class="clearfix"> </div>
					<p>Aliquam ex orci, dapibus eu facilisis non, scelerisque id nisl. 
						Praesent at tincidunt nisi. Aliquam molestie sem a purus pharetra.</p>
				</div>
				<div class="col-md-6 agileinfo_services_grid">
				<div class="agileinfo_services_grid_right">
						<h4><i class="fa fa-headphones" aria-hidden="true"></i></h4>
					</div>
					<div class="agileinfo_services_grid_left">
						<h4>Recording</h4>
					</div>
					
					<div class="clearfix"> </div>
					<p>Aliquam ex orci, dapibus eu facilisis non, scelerisque id nisl. 
						Praesent at tincidunt nisi. Aliquam molestie sem a purus pharetra.</p>
				</div>
				<div class="col-md-6 agileinfo_services_grid">
					<div class="agileinfo_services_grid_right">
						<h4><i class="fa fa-music" aria-hidden="true"></i></h4>
					</div>
					<div class="agileinfo_services_grid_left">
						<h4>Sound</h4>
					</div>

					<div class="clearfix"> </div>
					<p>Aliquam ex orci, dapibus eu facilisis non, scelerisque id nisl. 
						Praesent at tincidunt nisi. Aliquam molestie sem a purus pharetra.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 agileinfo_services_grid_img">
						<img src="images/serve.jpg" alt=" " class="img-responsive" />
			</div>
			<div class="clearfix"> </div>
		   </div>
		</div>
	</div>
<!-- //services -->

<!-- footer -->
<div class="footer" id="contact">
		<div class="container">
			<div class="agileits_w3layouts_footer_grids">
				<div class="col-md-4 agileits_w3layouts_footer_grid">
					<h3>Call Us Now</h3>
					<ul>
						<li><span>Office Phone :</span> (+123) 2302 232</li>
						<li><span>Fax :</span> (+123) 123 456 455</li>
					</ul>
				</div>
				<div class="col-md-4 agileits_w3layouts_footer_grid">
					<h3>Address</h3>
					<p>132 New Lenox, 868 1st Avenue <i>4th Street NYC.</i></p>
				</div>
				<div class="col-md-4 agileits_w3layouts_footer_grid">
					<h3>send a message</h3>
					<ul>
						<li><span>Email :</span> <a href="mailto:info@example.com">info@example1.com</a></li>
						<li><span>Enquiry :</span> <a href="mailto:info@enquiry.com">info@enquiry.com</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3_agileits_footer_grids">
				<div class="col-md-4 w3_agileits_footer_grid">
					<p>Nulla ex dolor, elementum sit amet placerat at, pretium in tortor. 
						Vestibulum lacinia arcu quis lacus sollicitudin condimentum. 
						Ut ac aliquet ex.</p>
				</div>
				<div class="col-md-4 w3_agileits_footer_grid">
					<h3>Hours Work</h3>
					<h4>Admissions are opened</h4>
					<ul>
						<li><span>Mon - Fri : </span> 9:00 AM to 5:00PM</li>
						<li><span>Sat : </span> 10:00 AM to 3:00PM</li>
					</ul>
				</div>
				<div class="col-md-4 w3_agileits_footer_grid">
					<h3>Subscribe Now</h3>
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Email" required="">
						<input type="submit" value="Submit ">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="wthree_copy_right">
		<div class="container">
			<p>© 2017 Musicality. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	</div>
<!-- //footer -->

	<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/classie.js"></script>
<!-- text-effect -->
		<script type="text/javascript" src="js/jquery.transit.js"></script> 
		<script type="text/javascript" src="js/jquery.textFx.js"></script> 
		<script type="text/javascript">
			$(document).ready(function() {
					$('.w3ls_agile').textFx({
						type: 'fadeIn',
						iChar: 100,
						iAnim: 1000
					});
			});
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
					$('.w3_text').textFx({
						type: 'fadeIn',
						iChar: 100,
						iAnim: 1000
					});
			});
		</script>


<script src="js/demo1.js"></script>
<!-- start-smooth-scrolling -->
	<script src="js/lightGallery.js"></script>
	<script>
    	 $(document).ready(function() {
			$("#lightGallery").lightGallery({
				mode:"fade",
				speed:800,
				caption:true,
				desc:true,
				mobileSrc:true
			});
		});
    </script>
<!-- //gallery -->
	<!-- flexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
					<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				  </script>
				<!-- //flexSlider -->

<!-- //for bootstrap working -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>

<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


</body>
</html>