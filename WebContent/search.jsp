<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="search.css" />
<title></title>
</head>
<body>

<nav>
			<div>
				<a href="index.jsp"><img class="logonav2"
					src="View/images/logo.png"></a>


				<ul>
					<li><a href="#news">News</a></li>
					<li><a href="search.html">Search</a></li>
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

	<div class="row justify-content-center">
		<div class="col-12 col-md-10 col-lg-8">
			<form class="card card-sm">
				<div class="card-body row no-gutters align-items-center">
					<div class="col-auto">
						<i class="fas fa-search h4 text-body"></i>
					</div>
					<!--end of col-->
					<div class="col">
						<input
							class="form-control form-control-lg form-control-borderless"
							type="search" placeholder="recherche de destinations">
					</div>
					<!--end of col-->
					<div class="col-auto">
						<button class="btn btn-primary" onclick="test()">Continuer</button>
					</div>
					<!--end of col-->
				</div>
			</form>
		</div>
		<!--end of col-->
	</div>

	<div class="container">

		<hgroup class="mb20">
			<h1>Search Results</h1>
			<h2 class="lead">
				<strong class="text-danger">3</strong> results were found for the
				search for <strong class="text-danger">Lorem</strong>
			</h2>
		</hgroup>

		<section class="col-xs-12 col-sm-6 col-md-12">
			<article class="search-result row">
				<div class="col-xs-12 col-sm-12 col-md-3">
					<a href="#" title="Lorem ipsum" class="thumbnail"><img
						src="" alt="Lorem ipsum" /></a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-2">
					<ul class="meta-search">
						<li><i class="glyphicon glyphicon-calendar"></i> <span>02/11/2018</span></li>
						<li><i class="glyphicon glyphicon-time"></i> <span>4:28
								pm</span></li>
						<li><i class="glyphicon glyphicon-tags"></i> <span>Paris</span></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-7 excerpet">
					<h3>
						<a href="#" title="">Voluptatem, exercitationem, suscipit,
							distinctio</a>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Voluptatem, exercitationem, suscipit, distinctio, qui sapiente
						aspernatur molestiae non corporis magni sit sequi iusto debitis
						delectus doloremque.</p>
					
				</div>
				<span class="clearfix borda"></span>
			</article>

			<article class="search-result row">
				<div class="col-xs-12 col-sm-12 col-md-3">
					<a href="#" title="Lorem ipsum" class="thumbnail"><img
						src="" alt="Lorem ipsum" /></a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-2">
					<ul class="meta-search">
						<li><i class="glyphicon glyphicon-calendar"></i> <span>02/11/2018</span></li>
						<li><i class="glyphicon glyphicon-time"></i> <span>8:32
								pm</span></li>
						<li><i class="glyphicon glyphicon-tags"></i> <span>Paris</span></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-7">
					<h3>
						<a href="#" title="">Voluptatem, exercitationem, suscipit,
							distinctio</a>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Voluptatem, exercitationem, suscipit, distinctio, qui sapiente
						aspernatur molestiae non corporis magni sit sequi iusto debitis
						delectus doloremque.</p>
					
				</div>
				<span class="clearfix borda"></span>
			</article>

			<article class="search-result row">
				<div class="col-xs-12 col-sm-12 col-md-3">
					<a href="#" title="Lorem ipsum" class="thumbnail"><img
						src="" alt="Lorem ipsum" /></a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-2">
					<ul class="meta-search">
						<li><i class="glyphicon glyphicon-calendar"></i> <span>01/11/2018</span></li>
						<li><i class="glyphicon glyphicon-time"></i> <span>10:13
								am</span></li>
						<li><i class="glyphicon glyphicon-tags"></i> <span>Paris</span></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-7">
					<h3>
						<a href="#" title="">Voluptatem, exercitationem, suscipit,
							distinctio</a>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Voluptatem, exercitationem, suscipit, distinctio, qui sapiente
						aspernatur molestiae non corporis magni sit sequi iusto debitis
						delectus doloremque.</p>
					
				</div>
				<span class="clearfix border"></span>
			</article>

		</section>
	</div>
</body>
</html>