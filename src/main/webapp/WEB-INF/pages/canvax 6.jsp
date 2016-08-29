<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Shopping Cart</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">

<style>
.btn-primary {
    color: #fff;
    background-color: #5f5f5f;
    border-color: #5f5f5f;
}
#myImg {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

#myImg:hover {
	opacity: 0.7;
}

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
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
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

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

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

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>

</head>

<body>
	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />
	
	<nav class="navbar">
	<div class="container">
		<a class="navbar-brand" href="#">MICROMAX canvax pro 6</a>

		<div class="navbar-right">
			<div class="container minicart"></div>
		</div>
	</div>
	</nav>

	<div class="container-fluid breadcrumbBox text-center">
		<ol class="breadcrumb">

			<li class="active"><a href="#"></a></li>
			<li><a href="#"></a></li>
		</ol>
	</div>

	
		<div class="row">
		<div class="col-md-5 col-sm-12">
			<div class="bigcart"></div>
			<img id="myImg" 
				src="http://cdn.ndtv.com/tech/images/micromax_canvas_6_three_sides.jpg"
				class="img-rounded" alt="MICROMAX CANVAS 6 PRO" width="304" height="236">
			<!-- The Modal -->
			<div id="myModal" class="modal">
				<span class="close">×</span> <img class="modal-content" id="img01">
				<div id="caption"></div>
			</div>

		</div>

		<div class="col-md-7 col-sm-12 text-left">
			<h2>Micromax Canvas 6 Pro (16 GB)</h2>
			<ul>
				<li class="row list-inline columnCaptions">
				 * 4 GB RAM | 16 GB ROM | Expandable Upto 64 GB
				</li>
				<li class="row list-inline columnCaptions">
			    * 5.5 inch Full HD Display
				</li>
				<li class="row list-inline columnCaptions">
				* 13MP Primary Camera | 5MP Front
				</li>
				<li class="row list-inline columnCaptions">
				* 3000 mAh Li-Polymer Battery
				</li>
                <li class="row list-inline columnCaptions">
				* Android Lollipop
				</li>
			</ul>
			
			<form action="canvax2" >
				<input type="submit" name="action" class="btn pull-left mr10 btn-primary btn-md"
					value="Buy now" />
			</form>
			<form action="canvax3">
				<input type="submit" name="button_1" class="btn btn-primary btn-md"
					value="Add to cart">
			</form>
			
		</div>
		</div>

	<!-- The popover content -->

	<div id="popover" style="display: none">
		<a href="#"><span class="glyphicon glyphicon-pencil"></span></a> 
		<a href="#"><span class="glyphicon glyphicon-remove"></span></a>
	</div>

	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function() {
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