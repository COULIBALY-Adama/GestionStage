<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Les Offres</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style>

body{
padding-top:0px;
padding-right:50px;
padding-bottom:0px;
padding-left:70px;
margin-top:0px;
margin-rigth:50px;
magin-left:70px;
margin-bottom:0px;
}
table {
	height: 0px;
	width: 90%;
	background-color: white;
	text-align: center;
	border-spacing: 3px;
	background-color: blue;
}

thead {
	background-color: black;
	border-bottom: 0px solid #333ddf;
	color: white;
}

td {
	color: black;
	background-color: white;
}

form {
	background-color: grey;
	height: 100px;
	width: 100%;
}
select{
height:40px;
width: 20%;
}

button {
height:40px;
width: 20%;
}
input{
height:40px;
width: 30%;
}
</style>

</head>
<body>
	<div id="menu">
		<h1>
			<center>
				<img src="banniere.JPG" width="1250" height="100" />
			</center>
		</h1>
	</div>

	<div class="leg1" height="10%" width="100%">
		<form method="post" action="ListeOffreServlet" autocomplete="off">
			<div border="2" align="center" background="blue">
				<select name="critere" placeholder="Fonction">
					<option value="titre">Titre</option>
					<option value="lieu">Lieu</option>
					<option value="categorie">Categorie</option>
				</select> <input type="text" name="search" placeholder="Tapez un mot Clé" />
				<button type="submit">Rechercher</button>
				<li><a href="\GestionStage\LesOffres"  style="border : 2px solid #DfFF40"><h2 style="background : #22ff00">Afficher_Tout</h2></a>
				<br/>
			</div>
		</form>
	</div>
	</br>

	<h2 align="center">LISTE DES OFFRES CREES</h2>
	<table border="solide" align="center" border-spacing="20px">
		<thead background-color="red">
			<tr>
				<th>Ref.</th>
				<th>Titre</th>
				<th>Description</th>
				<th>Durée</th>
				<th>Début de stage</th>
				<th>Lieu de Stage</th>
				<th>Service du Stage</th>
				<th>Catégorie</th>
				<th>Lien offre</th>
				<th>Id Admin</th>
				<th>Actions</th>
			</tr>
		</thead>
		<c:forEach items="${listeoffre}" var="list">
			<tr>
				<td><c:out value="${list.idof}" /></td>
				<td><c:out value="${list.titre}"></c:out></td>
				<td><c:out value="${list.description}"></c:out></td>
				<td><c:out value="${list.duree}"></c:out></td>
				<td><c:out value="${list.debut}"></c:out></td>
				<td><c:out value="${list.lieu}"></c:out></td>
				<td><c:out value="${list.service}"></c:out></td>
				<td><c:out value="${list.categorie}"></c:out></td>
				<td><c:out value="${list.lienoffres}"></c:out></td>
				<td><c:out value="${list.idadmin}"></c:out></td>
				<td><a href="${lists.lienoffre}" target="_blank">Publier</a> -
					<a
					href='<c:url value="/RecupLienOffreServlet"> <c:param name="idvis" value="${lists.idvis}"/> </c:url>'>Edit</a>
					- <a
					href='<c:url value="DeleteOffreServlet"> <c:param name="idof" value="${list.idof}"/> </c:url>'>Delete</a>
				</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>