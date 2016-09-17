<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>MICROMAX online shopping</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles.css">
<style>
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)}
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)}
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
	<style>
	.btn-primary {
    color: #fff;
    background-color: #5f5f5f;
    border-color: #5f5f5f;
}
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}


.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2.5s;
  animation-name: fade;
  animation-duration: 2.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

</style>
</head>

<body>
	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />
	
	
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="http://img6a.flixcart.com/www/promos/new/20140929-154721-top-banner.jpg" style="width:100%">
  <div class="text">Enjoy the life with micromax</div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="http://www.techgadgetsz.com/wp-content/uploads/2014/10/Opus-HD-Product-Page-Banner.jpg" style="width:100%">
  <div class="text">Micromax can change the world</div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="http://www.techgadgetsz.com/wp-content/uploads/2014/11/Product-Page-Banner-Q710s-1024x363.jpg" style="width:100%">
  <div class="text">New life style</div>
</div>


</div>
<br>

<div style="text-align:center">
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>

	<!-- START THE FEATURETTES -->

	<hr class="featurette-divider">

	<div class="row featurette">
		<div class="col-md-7 text-left">
			<h2 class="featurette-heading">
				MICROMAX CANVAS 6 PRO<br> <span class="text-muted">It'll
					blow your mind.</span>
			</h2>
			<p class="lead">Micromax has finally launched its recently
				announced Canvas 6 Pro smartphone. Announced at the re-branding
				event held last week in Delhi, the smartphone is now up for
				pre-order and Micromax states that it will begin shipping the same
				starting 20 April.</p>
				<form action="canvax1"><input type="submit" class="btn btn-primary btn-md" value="BUY NOW"  /></form>
		</div>
		<div class="col-md-5">
			<img id="myImg"   class="featurette-image img-responsive center-block"
				data-src="holder.js/500x500/auto" alt="MICROMAX CANVAS PRO 6"
				src="http://www.bgr.in/wp-content/uploads/2016/04/micromax-canvas-6-comparison.jpg"
				data-holder-rendered="true">
			
			
					<!-- The Modal -->
      <div id="myModal" class="modal">
     <span class="close">*</span>
    <img class="modal-content" id="img01">
     <div id="caption"></div>
    </div>	
		</div>
		
	</div>


	<hr class="featurette-divider">

	<div onclick="location.href='productList'" class="row featurette">
		<div class="col-md-7 col-md-push-5 text-left">
			<h2 class="featurette-heading">
				MICROMAX CANVAS 5 PRO <br> <span class="text-muted">See
					for yourself.</span>
			</h2>
			<p class="lead">
				3GB RAM & Quad-Core Processor Watch a movie, while you’re chatting
				with friends & updating your play list at the same time; with the
				smartphone’s 3GB DDR3 RAM! <br>* 1 GHz Quad-Core Processor
			</p>
			<input type="submit" class="btn btn-primary btn-md" value="View more"  />
		</div>
		<div class="col-md-5 col-md-pull-7">
			<img id="myImg" class="featurette-image img-responsive center-block"
				data-src="holder.js/500x500/auto" alt="500x500"
				src="http://drop.ndtv.com/TECH/product_database/images/1142015124016PM_635_micromax_canvas_5.jpeg"
				data-holder-rendered="true">
	
		</div>
	</div>

	<hr class="featurette-divider">
	<div onclick="location.href='productList'" class="row featurette">
		<div class="col-md-7 text-left">
			<h2 class="featurette-heading">
				MICROMAX CANVAS 4 PRO <span class="text-muted">Happy to paly.</span>
			</h2>
			<p class="lead">Micromax Canvas 4, one more addition to the
				Canvas series poses a 5 inch IPS LCD, 16m colors display of
				resolution 1280 x 720 px along with a 1.2 GHz Quad Core Cortex A7
				processor, PowerVR Series 5XT graphics and 1GB of RAM. It runs on
				Android 4.2.1 Jelly Bean OS. It poses Multi Touch Screen with No. of
				touch points as 10.</p>
				<input type="submit" class="btn btn-primary btn-md" value="View more"  />
		</div>
		<div class="col-md-5">
			<img id="myImg"  class="featurette-image img-responsive center-block"
				data-src="holder.js/500x500/auto" alt="500x500"
				src="http://n2.sdlcdn.com/imgs/a/s/x/a3152-dbeb7.jpg"
				data-holder-rendered="true">
		</div>
	</div>

	<hr class="featurette-divider">

	<!-- /END THE FEATURETTES -->
	<!-- ################################################################# -->
	<div class="">
		<div class="bg-3 text-left">
			<h3 class="margin">Where To Find Me?</h3>
			<br>
			<div onclick="location.href='productList'" class="row featur2">
				<div class="col-sm-4">
					<img id="myImg" 
						src="http://www.smartphoneandprice.com/wp-content/uploads/2015/11/micromax-canvas-amaze-q395-goes-official-in-india.jpg"
						class="img-responsive margin" style="width: 100%" alt="Image">
						
					<p style="font-size:13px;">
						Full Specifications <br> New Canvas series smartphone is
						coming up with the 5.0<br> Memory unit comprises of the 2 GB
						of RAM on slot and the internal in – built memory of 8 GB also as
						the smartphone provided with the micoSD card slot so the in –
						built memory can be further expandable up to 32 GB.
					</p>
					<input type="submit" class="btn btn-primary btn-md" value="view more"  />



				</div>

				<div onclick="location.href='productList'" class="col-sm-4">

					<img id="myImg" 
						src="http://images.fonearena.com/blog/wp-content/uploads/2015/11/Micromax-Canvas-Xpress-4G-Q413.jpg"
						class="img-responsive margin" style="width: 100%" alt="Image">
					<p style="font-size:13px;">
						Micromax Canvas Xpress 4G Q413 *specifications<br> *5-inch
						(1280 x 720 pixels) HD IPS display <br> *1 GHz Quad-core
						MediaTek MT6735P processor with Mali-T720 GPU<br> *2GB DDR3
						RAM, 16GB internal memory, <br> *Android 5.1 OS<br> *8MP
						rear camera with LED Flash, <br> *2MP front-facing camera<br>
						*2000mAh battery
					</p>
					<input type="submit" class="btn btn-primary btn-md" value="View more"  />
				</div>
				<div onclick="location.href='productList'" class="col-sm-4">

					<img id="myImg" 
						src="http://n1.sdlcdn.com/imgs/b/3/9/652930019877_11-ce549.jpg"
						class="img-responsive margin" style="width: 100%" alt="Image">
					<p style="font-size:13px;">
						1 Year Manufacturer Warranty Screen Size : 13.97 cm (5.5),<br>
						*1 GB RAM and 8 GB ROM 1.3 Ghz<br> *Quad Core Processor 8 MP
						Rear & 5 MP Front Camera<br> *2500 mAh Battery Connectivity :
						3G OS : Android v5.1 (Lollipop) 12 Months Brand Warranty<br>
						*SUPC: SDL174095294
					</p>
					<input type="submit" class="btn btn-primary btn-md" value="View more"  />
				</div>
			</div>
		</div>
	</div>
	
	
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    modalImg.alt = this.alt;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}
</script>
<hr class="featurette-divider">
<jsp:include page="_footer.jsp" />
</body>
</html>