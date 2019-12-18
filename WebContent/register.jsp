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

	<div id="form-conexion" class="border">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
      		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        		<span class="navbar-toggler-icon"></span>
      		</button>
      
      <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="#">HomeSwitchHome</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
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