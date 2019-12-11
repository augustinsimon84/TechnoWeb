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

<nav class="navbar navbar-expand-lg navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="inscription.html">HomeSwitchHome</a>
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


      <div id="form-conexion" class="border">
        <form action="Login" method="post">
          <!-- email -->
          <div class="form-group">
            <input name="email" type="email" class="form-control" id="mail" aria-describedby="emailHelp" placeholder="Email Address">
          </div>
          
          <!-- Nom Prénom -->
          <!--<div>
          	<input name="identifiant"  class="form-control" id="mail" placeholder="Pseudo">
          </div>-->
          
          <div class="form-group">
            <input name="mdp" type="password" class="form-control" id="pass" placeholder="Password">
          </div>
          
          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
          </div>
          
          <td><input value="Se connecter" type="submit" class="btn btn-primary" onclick="test()"><a id="connectbutton">Continuer</a></button></td>
          <td><a href="register.jsp">Inscription</a></td>
      	</form>
      </div>
    
   

</body>
</html>