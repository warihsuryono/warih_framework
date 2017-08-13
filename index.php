<?php include_once "homepage_header.php"; ?>
	<style>
		.video {
		  position: relative;
		  top: 0%; left: 0%;
		  z-index: -100;
		  min-width: 100%;
		  min-height: 100%;
		  width: auto;
		  height: auto;
		  transform: translate(0%, 0%);
		  margin: 0;
		  padding: 0;
		  object-fit: fill;
		}
		.mainImage{
			background-image: url('../images/main_images.jpg');
			z-index:1;
			background-position:center center;
			background-repeat:no-repeat;
			background-size:100% 100%; 
			width:100%;
			height:620px;
			background-attachment:fixed;
		}
	</style>
	<!--div align="center" class="embed-responsive embed-responsive-16by9">
		<video autoplay loop class="embed-responsive-item">
			<source src="images/main_video.mp4" type="video/mp4">
		</video>
	</div-->
	
	<!-- Top content -->
	<div class="top-content" style="position:absolute;top:10px;">
		<div class="container">

			<div class="row">
			
				<div class="col-sm-6 text wow fadeInLeft">
					<h1>Register To Our Course</h1>
					<div class="description">
						<p class="medium-paragraph">
							We have been working very hard to create the new version of our course. It comes with a lot of new features. Check it out now!
						</p>
					</div>
					<div class="top-buttons">
						<a class="btn btn-link-1 scroll-link" href="#pricing">Our Prices</a>
						<a class="btn btn-link-2 scroll-link" href="#features">Learn More</a>
					</div>
				</div>
			
				<div class="col-sm-4 col-sm-offset-2 r-form-1-box">
					<div class="r-form-1-top">
						<h3>Fill in the form below to get instant access now!</h3>
					</div>
					<div class="r-form-1-bottom">
						<form role="form" action="" method="post">
							<div class="form-group">
								<label class="sr-only" for="r-form-1-name">Name</label>
								<input type="text" name="r-form-1-name" placeholder="Name..." class="r-form-1-name form-control" id="r-form-1-name">
							</div>
							<div class="form-group">
								<label class="sr-only" for="r-form-1-email">Email</label>
								<input type="text" name="r-form-1-email" placeholder="Email..." class="r-form-1-email form-control" id="r-form-1-email">
							</div>
							<div class="form-group">
								<label class="sr-only" for="r-form-1-phone">Phone</label>
								<input type="text" name="r-form-1-phone" placeholder="Phone..." class="r-form-1-phone form-control" id="r-form-1-phone">
							</div>
							<button type="submit" class="btn">Sign me up</button>
							<p class="terms">
								* By registering you accept our 
								<a href="#" class="launch-modal" data-modal-id="modal-terms">Terms &amp; Conditions</a>.
							</p>
						</form>
					</div>
				</div>
				
			</div>
			<div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 704px; width: 1312px; z-index: -999998; position: absolute;">
				<img src="images/main_images.jpg" style="position: absolute; margin: 0px; padding: 0px; border: none; width: 1312px; height: 874.667px; max-height: none; max-width: none; z-index: -999999; left: 0px; top: -85.3333px;">
			</div>
		</div>
	</div>

<div style="height:600px;"></div>
<?php $main_container_attr = 'style="position:relative;top:-120px;left:-10%;"'; ?>	
<?php include_once "main_container.php"; ?>
<table width="100%">
<tr><td>snsd,fakdsfjklad</td></tr>
</table>
<?php include_once "main_container_end.php"; ?>
<?php include_once "footer.php"; ?>