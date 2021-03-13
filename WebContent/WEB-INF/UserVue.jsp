<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />

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

form {
	border-color: grey;
	height: 100px;
	width: 100%;
}
select{
height:40px;
width: 20%;
}

button {
height:30px;
width: 35%;
}
input{

height:30px;
width: 40%;
}

legend{
padding:8px;
margin:24px;
background-color: white;
}

fieldset{
padding:20px;
margin:10px
height:250px;
width: 80%;
font-size: 35px;
background-color: #548B54;
font-size: large;
font-size: 150%;
}
center{
margin-top:0px;
margin-rigth:50px;
magin-left:70px;
margin-bottom:0px;
background-color: ##BBD2E1;
}

label{
height:30px;
width: 50%;
}
</style>

</head>
<body>
<p>
<div id="menu">
		<h1>
			<center>
				<img src="banniere.JPG" width="100%" height="100" />
			</center>
		</h1>
	</div>
	<div id="frstDiv">
			<h2>
				<span style="color: #dc143c" class=""></span> <span
					style="color: green; font-weight: bolder; font-family: Calligrapher, Arial;"></span>
				<span
					style="color: red; font-weight: bolder; font-family: Calligrapher, Arial;"> <center> Offres
					de stage </center></span><span style="color: #dc143c" class=""></span>
				<div style="background-color: rgba(0, 0, 0, 0.5); border-radius: 5px;">
					<marquee direction="right" behaviour="alternate">
						<span style="color: #ff1493;" class=""></span>
					</marquee>
				</div>
			</h2>
		</div>
		<center>
<div >

 	<form method="post" action="UserServlet">
 	<fieldset  style="border : 50px solid #548B54">
	<legend style="border : 20px solid #548B54"><h1>Inscription</h1></legend>
	<p><h2>Ici, le formulaire d'inscription des administrateurs</h2></p>
	<label for="nom">Nom<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="nom" name="nom" value=""
	size="30" maxlength="20" />
	<br/>
 	<label for="prenom">Prénom<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="prenom"
	name="prenom" value="" size="30" maxlength="20" />
	<br/>
 	<label for="email">Adresse email<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="email"
	name="email" value="" size="30" maxlength="40" />
	<br/>
	<label for="Password">Mot de passe<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="password"
	name="password" value="" size="30" maxlength="20" />
	<br/>	
 	<label for="fonction">Fonction à l'IFI<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="fonction"
	name="fonction" value="" size="30" maxlength="40" />
	<br/>	
  	<input type="submit" value="Enregistrer"
	class="sansLabel" />
	<br />
	</fieldset>
 	</form>
 </div>	
 </center>
 </p>
</body>
</html>