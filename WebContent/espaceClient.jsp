 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="espaceClient.css" />
<link rel="stylesheet" href="add_house.css" />


<title>HomeSwitchHome | Espace Client</title>
</head>
<body>
<script type="text/javascript" src="add_houe.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("email") == null)
		{
			response.sendRedirect("login.jsp");
			
		}
%>

	
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
	
	
		
		
				
	<div class="container emp-profile">
		<form method="post">
			<div class="row">
				<div class="col-md-4">
					<div class="profile-img">
						<img id="avatar" src="View/images/default.jpg">

					</div>
				</div>
				<div class="col-md-6">
					<div class="profile-head">
					Bienvenue
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>

						</ul>
					</div>
				</div>
				<div class="col-md-2">
					<input type="submit" class="profile-edit-btn" name="btnAddMore"
						value="Edit Profile" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
			
							<svg height="1" width="5000">
  									<line x1="0" y1="0" x2="870" y2="0"
									style="stroke:rgb(150,150,150);stroke-width:1" />
							</svg>
							<div class="row">
								<div class="col-md-6">
									<label>Name</label>
								</div>
								<div class="col-md-6">
									<% 
									
										ResultSet resultSet = null;
										String emailSession = (String)session.getAttribute("email");
										System.out.println("On est déjà logged");
										
										String url = "jdbc:mysql://localhost:3306/bddtest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
										String username = "root";
										String password = "root";
										
										Class.forName("com.mysql.cj.jdbc.Driver");
										Connection con = DriverManager.getConnection(url, username, password);
										String sql2 = "SELECT * FROM login WHERE email="+"'"+emailSession+"'";
										
									
										PreparedStatement pst2 = con.prepareStatement(sql2);
									
										resultSet = pst2.executeQuery();
										
										while(resultSet.next()) {
									%>
									<p><%=resultSet.getString("prenom")+" "+resultSet.getString("nom") %></p>
									
								</div>
							</div>
							<svg height="1" width="5000">
  									<line x1="0" y1="0" x2="870" y2="0"
									style="stroke:rgb(150,150,150);stroke-width:1" />
							</svg>
							<div class="row">
								<div class="col-md-6">
									<label>Email</label>
								</div>
								<div class="col-md-6">
									<p><%=resultSet.getString("email") %></p>
								</div>
							</div>
							<svg height="1" width="5000">
  									<line x1="0" y1="0" x2="870" y2="0"
									style="stroke:rgb(150,150,150);stroke-width:1" />
							</svg>
							<div class="row">
								<div class="col-md-6">
									<label>Phone</label>
								</div>
								<div class="col-md-6">
									<p><%=resultSet.getString("telephone") %></p>
									<%
										} 
									%>
								</div>
							</div>
							<svg height="1" width="5000">
  									<line x1="0" y1="0" x2="870" y2="0"
									style="stroke:rgb(150,150,150);stroke-width:1" />
							</svg>
						
							
						</div>

					</div>
				</div>
			</div>
		</form>
	</div>
	
	 <div class="inner_button">
				<button id="button_ajouter_home" class="btn btn-info" name="ajouter_home" onclick="popup_add_home()" >Ajouter Home</button>
			</div>
		    
			<div id="fond_noir"></div>
		    <div id="popup_ajouter_home" class='border'>
		    <button type="button" class="btn close" onclick="close_popup()" data-dismiss="modal" aria-label="Close"> 
                <span aria-hidden="true">×</span> 
            </button> 
				<div id="body_popup_ajouter_home">
				<form action ="${pageContext.request.contextPath}/Add_Home" id ='form-house' class='border' method="post">
				  <div class='form-row'>
					<div class='col-md-4 mb-3'>
					  <label for='validationServer04'>Superficie</label>
					  <input name='area' type='text' class='form-control' placeholder='m²' required>
					</div>
					<div class='col-md-4 mb-3'>
					  <label for='validationServer04'>Rooms</label>
					  <input name='nb_rooms' type='text' class='form-control' id='validationServer02' placeholder='Nombre de pièces' required>
					</div>
					<div class='col-md-4 mb-3'>
					  <label for='validationServer04'>Rooms</label>
					  <select class='custom-select'>
						<option selected>Autres</option>
						<option value='1'>Appartement</option>
						<option value='2'>Maison</option>
					  </select>
					</div>
				  </div>
				  <div class='form-row'>
					<div class='col-md-4 mb-3'>
					  <label for='validationServer03'>City</label>
					  <input name = 'city' type='text' class='form-control' id='validationServer03' placeholder='City' required>
					</div>
					<div class='col-md-3 mb-3'>
					  <label for='validationServer04'>State</label>
					  <input name='state' type='text' class='form-control' id='validationServer04' placeholder='State' required>
					  <div class='invalid-feedback'>
						Please provide a valid state.
					  </div>
					</div>
					<div class='col-md-3 mb-3'>
					  <label for='validationServer05'>Zip</label>
					  <input name ='zip' type='text' class='form-control' id='validationServer05' placeholder='Zip' required>
					  <div class='invalid-feedback'>
						Please provide a valid zip.
					  </div>
					</div>
				  </div>
				  <p>Photos</p>
				  <div class='custom-file'>
					<label class='custom-file-label' for='customFile'>Choose file</label>
					<input type='file' class='custom-file-input' id='customFile' multiple>
				  </div>
				  <div class='form-group'>
					<div class='form-check'>
					  <input class='form-check-input' type='checkbox' value='' id='invalidCheck3' required>
					  <label class='form-check-label' for='invalidCheck3'>
						Agree to terms and conditions
					  </label>
					  <div class='invalid-feedback'>
						You must agree before submitting.
					  </div>
					</div>
				  </div>
				  <button class='btn btn-primary' type='submit'>Submit form</button>
				</form>
		</div>	
	

</body>
</html>
