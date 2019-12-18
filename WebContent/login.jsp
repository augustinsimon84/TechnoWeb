<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomeSwitchHome | Connexion</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="style_con.css" />
</head>
<body>

<nav>
	<div>
		<a href="index.html"><img class="logonav2"
			src="View/images/logo.png"></a>


		<ul>
			<li><a href="#news">News</a></li>
			<li><a href="search.html">Search</a></li>
			<li><form action= "Logout">
					<input type="submit" value="Logout">
				</form></li>
					
		</ul>
	</div>
</nav>



      <div id="form-conexion" class="border">
        <form action="Login" method="post">
          <!-- email -->
          <div class="form-group">
            <input name="email" type="email" class="form-control" id="mail" aria-describedby="emailHelp" placeholder="Email Address">
          </div>
          
          <!-- Nom Pr�nom -->
          <!--<div>
          	<input name="identifiant"  class="form-control" id="mail" placeholder="Pseudo">
          </div>-->
          
          <div class="form-group">
            <input name="mdp" type="password" class="form-control" id="pass" placeholder="Password">
          </div>
          
          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Se souvenir de moi</label>
          </div>
          
          <td><input value="Se connecter" type="submit" class="btn btn-primary" onclick="test()"><a id="connectbutton">Continuer</a></button></td>
          <td><a href="register.jsp">Inscription</a></td>
      	</form>
      </div>
    
   

</body>
</html>