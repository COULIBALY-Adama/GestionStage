<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Les Liens</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">  
<style>

body{
background-color:F5FFFA;
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
	height: 100px;
	width: 90%;
	text-align: center;
	border-spacing: 10px;
	background-color: grey;
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
	background-color: #F5F5F5;
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
			<center><img src="logo_ifi.png" width="100%" height="100"/></center>
		</h1>
	</div>
	<div id="pres">
		<ul>
			<li><a href="\GestionStage\Logout">Se Deconnecter</a></li>
		</ul>
	</div>


<table border="2" align = "center" background-color="green" color="yellow"  margin:10px padding:5px>
<tr>
<th>Ref</th>
<th>Adr. User</th>
<th>Email</th>
<th>Date du Partage</th>
<th>Lien de l'offre</th>
<th>Actions</th>
</tr text-align: left>
<c:forEach items="${ListeLiens}" var ="lists">
<tr>
<td>
<c:out value="${lists.idvis}" />
</td>
<td>
<c:out value="${lists.reference}"></c:out>
</td> 
<td>
<c:out value="${lists.email}"></c:out>
</td>
<td>
<c:out value="${lists.datePart}"></c:out>
</td>
<td>
<c:out value="${lists.lienoffre}"></c:out>
</td>
<td><a href="${lists.lienoffre}" target="_blank">Vérifier</a> -
<a href ='<c:url value="/RecupLienOffreServlet"> <c:param name="idvis" value="${lists.idvis}"/> </c:url>'>CréerOffre</a> - 
<a href ='<c:url value="/SupprOffreServlet"> <c:param name="idvis" value="${lists.idvis}"/> </c:url>'>Delete</a> </td>

</tr>
</c:forEach>
</table>                                                                                                                                  
</body>
</html>
