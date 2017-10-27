<%@ page import="dev.sgp.entite.Collaborateur"%>
<%@ page import="dev.sgp.entite.Departement"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="UTF-8">
<title>SGP - App</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap.min.css">


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>

<script>
	function Editer() {
		document.forms[0].action = "<%=request.getContextPath()%>/collaborateurs/editer"
		document.forms[0].method = "GET"
		document.forms[0].submit();
	}
</script>

<style>
.bouton {
	border: 1px solid #000;
	background: green;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	position: absolute;
	right: 0;
	top: 60px;
	margin-top: 6px;
	margin-right: 10px;
}

h1 {
	margin-left: 0.5em;
}

img {
	max-width: 100%;
	margin: 10px
}

form {
	margin-top: 100px;
}
</style>

</head>


<body>



	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<a class="navbar-brand" href="#">Login</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="<%=request.getContextPath()%>/collaborateurs/lister">Collaborateur <span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="Statistique.html">Statistique</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="Activite.html">Activité</a>
			</li>
		</ul>
	</div>
	</nav>







	<form>

		

		<div class="row">
			<div classe="col-2 offset-9">

				<a href="<%=request.getContextPath()%>/collaborateurs/ajouter" class="bouton">Ajouter un
					nouveau collaborateur</a>
			</div>
		</div>

		<div class="row">
			<h1>Les collaborateurs</h1>
		</div>

		<div class="row">
			<div class="col-3">
				<label>Rechercher un nom ou un prénom qui commance par :</label>
			</div>
			<div class="col-2">
				<input type="text" id="recherche">
			</div>
			<div class="col-2">
				<input type="button" class="btn btn-primary " value="Rechercher">
			</div>
			<div class="col-1 offset-1">
				<input type="checkbox">
			</div>
			<div class="col-2">
				<label>Voir les collaborateur désactivés</label>
			</div>
		</div>

		<div class="row">
			<div class="col-2 offset-1">
				<label>Filtrer par département :</label>
			</div>
			<div class="col-2">
				<select class="col-10">
				
				<%
				
				List<Departement> departements = (List<Departement>) request.getAttribute("listeDep");
				for (Departement dep : departements) {
				%>
				<option><%=dep.getNom()%></option>
				<%
					}
				%>
					
				</select>
			</div>
		</div>

		<div class="row">


			<%
				List<Collaborateur> collaborateur = (List<Collaborateur>) request.getAttribute("listeCollab");
				for (Collaborateur list : collaborateur) {
			%>



			<div class="col-4">
				<li class="list-group-item">
					<h3><%=list.getNom()%>  <%=list.getPrenom()%> <%=list.getMatricule() %> </h3>
				</li>
				<div class="row">
					<div class="col-4">

						<img src="http://media-cache-ak0.pinimg.com/736x/76/a6/f2/76a6f20edc68412230782794b4887786.jpg">

					</div>

					<div class="col-8">
						<div class="row">
							<div class="col-6">
								<label>Téléphone</label>
							</div>
							<div class="col-6">
								<label><%=list.getTelephone()%></label>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<label>Email</label>
							</div>
							<div class="col-6">
								<label><%=list.getEmailPro()%></label>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<label>Adresse</label>
							</div>
							<div class="col-6">
								<label ><%=list.getAdresse()%></label>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<label>Date de naissance</label>
							</div>
							<div class="col-6">
								<label ><%=list.getDateDeNaissance()%></label>
							</div>
						</div>
						<div class="row">
							<div class="offset-6">
							<a href="<%=request.getContextPath()%>/collaborateurs/editer" class="bouton">Editer</a>
								
							</div>
						</div>
					</div>

				</div>
			</div>


			<%
				}
			%>


		</div>





	</form>


</body>
</html>