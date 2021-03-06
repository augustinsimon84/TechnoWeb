<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="design_accueil.css">
<!-- <script src="js_accueil.js"></script> -->

<title>HomeSwitchHome | Échangez votre maison gratuitement</title>


<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script>
	
	$(window).on('scroll', function(){
			if($(window).scrollTop()){
				$('nav').addClass('black');
			}
			else
			{
				$('nav').removeClass('black');
			}
		})
</script>


<script>
	function randomImage(){
	  var images = [
	   'View/images/accueil_1.jpg',
	   'View/images/accueil_5.jpg',
	   'View/images/accueil_6.jpg'];
	  var size = images.length;
	  var x = Math.floor(size * Math.random());
	  console.log(x);
	  var element = document.getElementsByClassName('randomBg');
	  console.log(element);
	  element[0].style["background-image"] = "url("+ images[x] + ")";
	}
	
	document.addEventListener("DOMContentLoaded", randomImage);
</script>
</head>

<body>
<div id="slide" class="randomBg">
		

		<!-- Navigation bar-->
		<nav>
			<div>
				<a href="index.jsp"><img class="logonav2" src="View/images/logo.png"></a>
				<a href="index.jsp"><img class="logonav" src="View/images/logoblanc.png"></a>
		
				<ul>
			  		<li><a href="register.jsp">News</a></li>
			  		<li><a href="search.jsp">Search</a></li>
			  		<li>
						<% if (session.getAttribute("email") == null) { %>
							<a href="login.jsp" class="login">Login</a>
						<% } else { %>
							<a href="espaceClient.jsp" class="login">Espace client</a>
						<% } %>
					</li>
			  	</ul>
		  	</div>
		</nav>

		
		<p class="title" >
				HomeSwitchHome  
				
		</p>
		<p class="subtitle">

				Echangez votre maison gratuitement !    
		</p>

	</div>
	



<!-- Section description de l'activité -->
	<div class="service">
		
		<h2 id="titre">
			Un service de qualité pour vos prochaines vacances
		</h2>
		
		<p id="description">
			Grâce à HomeSwitchHome, vous avez désormais la possibilité d'échanger gratuitement votre maison avec celle d'autres hôtes. Après avoir renseigné vos coordonnées et ajouté une première résidence, d'autres voyageurs pourront vous trouver et ainsi vous proposer de réaliser un échange pour une période convenue. Vous pouvez séjourner dans des propriétés aux quatre coins du globe grâce à notre vaste réseau de plus de 100 millions d'hôtes.
		</p>
	</div>


	<!-- Section dernières suggestions -->
	<div class="suggestions">
		
		<h3 id="titre2">
			Nos dernières suggestions
		</h3>
		
		
		<div class="row">

			<div class="column">
				<img src="View/images/accueil_4.jpg" alt="Luxury house" style="width:100%">
			</div>

			<div class="column">
				<img src="View/images/accueil_3.jpg" alt="Luxury house" style="width:100%">
			</div>

			<div class="column">
				<img src="View/images/accueil_7.jpg" alt="Luxury house" style="width:100%">
			</div>
		</div>

	</div>






		<div class='foot'>
			<ul>
			  		<li><a href="#a">Jobs</a></li>
			  		<li><a href="#b">Privacy</a></li>
			  		<li><a href="#c">Login</a></li>
			  		<li><a href="#d">Terms</a></li>
			  		<li><a href="#e">Cookies</a></li>
			  		<li><a href="#f">Contact</a></li>
			  		<li><a href="#g">Preferences</a></li>
			  		<li><a href="#h" class='contract'> © Home Switch Home 2019</a></li>
			  	</ul>
					
		</div>
</body>
</html>