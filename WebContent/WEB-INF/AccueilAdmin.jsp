<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<html >
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="/style1.css" />
<title>GestionStage | Admin</title>
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


p{
margin-top:0px;
margin-rigth:50px;
magin-left:70px;
margin-bottom:0px;
background-color: ##BBD2E1;

}
#menu {
	width: 100%;
	height: 200px;
	background-color: #ffffff;
}

#pres {
	width: 100%;
	height: 75px;;
	position: center;
}

#pres ul {
	list-style-type:none;
	float: right;
	right: 10%;
	padding-top: 15px;
	margin-left: -400px;
	position: relative;
}

#pres ul li {
    display: inline;
	list-style: none;
	margin-left: 20px;
	list-style-type: none;
	position: relative;
}

#pres ul li a {
	text-align: center;
	
	background-color: #00A0A0;
	height: 40px;
	width: 140px;
	color: #FD0;
	padding-top: 10px;
	text-decoration: none;
	position: relative;
	display:inline-block;
	margin: 0 40px;
}

#pres ul li a:hover {
	background: #773300;
}

#cent {
	height: 100%;
	width: 100%;
	background-color: #aaabbb;
}

#cen table {
	width: 80%;
	background-color: white;
	text-align: center;
}

tr:first-child {
	font-weight: bold;
	background-color: #777777;
}


</style>
</head>

<body>
<p>
<div id="menu">
		<h1>
			<center>
				<img src="banniere.JPG" width="1250" height="100"/>
			</center>
		</h1>
	</div>
	<div id="pres">
		<ul>
			<li><a href="\GestionStage\Offr">Gestion des Offres</a></li>
			<li><a href="\GestionStage\Admin">Gestion des Admin</a></li>
			<li><a href="\GestionStage\Logout">Se Deconnecter</a></li>
		</ul>
	</div>

	<div class="form-control" id="frsDivTop">
		<hr id="top" />
		<div id="frstDiv">
			<h2>
				<span style="color: #dc143c" class=""></span> <span
					style="color: green; font-weight: bolder; font-family: Calligrapher, Arial;"></span>
				
			   	<div style="background-color: rgba(0, 0, 0, 0.5); border-radius: 5px;">
					<marquee direction="right" behaviour="alternate">
						<span style="color: #ff1493;" class=""></span>
					</marquee>
				</div>
			</h2>
		</div>
	</div>
</p>
 </body>
</html>