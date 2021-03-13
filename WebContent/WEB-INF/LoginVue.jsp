<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page de Connexion</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />

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

form {
	border-color: grey;
	height: 100px;
	width: 70%;
}
select{
height:40px;
width: 20%;
}

button {
height:30px;
width: 20%;
background-color: green;
}
input{
height:30px;
width: 30%;
}

legend{
padding:8px;
margin:24px;
background-color: white;
width: 60%;
}

fieldset{
padding:20px;
margin:10px
height:250px;
font-size: 35px;
background-color: #F5F5F5;
font-size: large;
font-size: 150%;
width: 90%;
}

label{
}
</style>

</head>

<body>
<div id="menu">
		<h1>
			<center>
				<img src="banniere.JPG" width="1250" height="100"/>
			</center>
		</h1>
	</div>
<div>
 	<form method="post" action="LoginServlet">
 	<center>
 	<fieldset style="border : 50px solid #696969">
	<legend style="border : 20px solid #660000"><h2>Connexion</h2></legend>
	<p>Veuillez vous connecter pour continuer.</p>
	<label for="email">Username:<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="email" name="email" value=""
	size="20" maxlength="60" placeholder="votre mail"/>
	<br/>
	<label for="password">Mot de Passe:<span
	class="requis">*</span></label>
	<input type="password" autocomplete="off" id="password"
	name="password" value="" size="20" maxlength="20" placeholder="mot de passe" />
	<br/>
	<input type="submit" value="Se Connecter"
	class="sansLabel" />
	<br />
				</fieldset>
				</center>
 			</form>
 			
 		</div>
	</body>
</html>