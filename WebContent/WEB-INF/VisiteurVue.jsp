<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GestionStage | Partage lien</title>
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
}

fieldset{
padding:20px;
margin:10px
height:250px;
width: 80%;
font-size: 35px;
background-color: #F5F5F5;
font-size: large;
font-size: 150%;
}

label{
}
</style>

</head style="border : 50px solid #622069">
<bodystyle="border : 50px solid #696969">
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
				<span style="color: #dc143c" class=""></span>
				<div style="background-color: rgba(0, 0, 0, 0.5); border-radius: 5px;">
					<marquee direction="right" behaviour="alternate">
						<span style="color: #ff1493;" class=""></span>
					</marquee>
				</div>
			</h2>
		</div>
		<center>
<div>
 	<form method="post" action="VisiteurServlet">
 	<fieldset style="border : 50px solid #696969">
	<legend style="border : 20px solid #800000"><h1>Partager Lien</h1></legend>
	<p><h2>Vous pouvez partager les offres via ce formulaire.</h2></p>
	<label for="reference">Adresse visiteur <span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="email" name="reference" value=""
	size="20" maxlength="60" />
	<br/>
	<label for="email">Adresse email<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="email"
	name="email" value="" size="20" maxlength="20" />
	<br/>
	<label for="lienoffre">Lien de l'offre</label>
	<input type="text" autocomplete="off" id="lienoffre" name="lienoffre" value=""
	size="20" maxlength="200" />
	<br/>
	<input type="submit" value="Envoyer"
	class="sansLabel" />
	<br />
	</fieldset>
 	</form>
 </div>
 </center>
</body>
</html>