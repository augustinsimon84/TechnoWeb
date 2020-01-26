<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomeSwitchHome | Inscription</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="style.css" />

</head>
<body>

<nav>
			<div>
				<a href="index.jsp"><img class="logonav2"
					src="View/images/logo.png"></a>


				<ul>
					<li><a href="#news">News</a></li>
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

	
	<div id="forms">
      <div id="form-inscription" class="border">
        <form  action="Register" method="post" onsubmit="return validate()">
        
	        <div class="form-group">
	          <input name="nom" type="text" class="form-control" id="lname" placeholder="Nom">
	        </div>
        
	        <div class="form-group">
	          <input name="prenom" type="text" class="form-control" id="fname" placeholder="Prénom">
	        </div>
	        
	        <div class="form-group">
	          <input name="email" type="email" class="form-control" id="mail" aria-describedby="emailHelp" placeholder="Email Address">
	          <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	        </div>
	        
	        <div class="form-group">
	          <input name="telephone" type="text" class="form-control" id="mail" aria-describedby="emailHelp" placeholder="N° Téléphone">
	        </div>
	        
	        <div class="form-group">
	          <input name="mdp" type="password" class="form-control" id="pass" placeholder="Password">
	        </div>
	        
	        <div class="form-check">
	          <input type="checkbox" class="form-check-input" id="exampleCheck1">
	          <label class="form-check-label" for="exampleCheck1">Check me out</label>
	        </div>
	        
	        <button type="submit" class="btn btn-primary">Valider</button>
    	</form>
</div>
</div>


<script>

	// test validité données utilisateur
	function validate() { 
		
		var fullname = document.form.fullname.value;
		var email = document.form.email.value;
		var username = document.form.username.value; 
		var password = document.form.password.value;
		var conpassword= document.form.conpassword.value;
	 
		 if (fullname==null || fullname=="") { 
		 	alert("Full Name can't be blank"); 
		 	return false; 
		 }
		 else if (email==null || email=="") { 
		 	alert("Email can't be blank"); 
		 	return false; 
		 }
		 else if (username==null || username=="") { 
		 	alert("Username can't be blank"); 
		 	return false; 
		 }
		 else if(password.length<6) { 
		 	alert("Password must be at least 6 characters long."); 
		 	return false; 
		 } 
		 else if (password!=conpassword) { 
		 	alert("Confirm Password should match with the Password"); 
		 	return false; 
		 } 
	 }
	
</script>

</body>
</html>