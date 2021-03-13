<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr"> 
<head>
    <meta charset="utf-8">
    
	<!--title-->
    <title>GestionStage | Accueil</title>
	<!--CSS-->
    <link href="css_new/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="css_new/font-awesome.min.css" rel="stylesheet">
<link href="css_new/owl.carousel.css" rel="stylesheet"> 
	 
	<link href="css_new/main.css" rel="stylesheet">
	<link href="css_new/select2.min.css" rel="stylesheet">
	<link id="preset" rel="stylesheet" type="text/css" href="css_new/preset1.css">
	<link href="css_new/responsive.css" rel="stylesheet">		
	
     <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600' rel='stylesheet' type='text/css'>
         
    <link type="image/x-icon" href="http://www.educarriere.ci/pics/favicon.ico" rel="Shortcut icon"/>
    


<style type="text/css">
 .details-news .infos .list-inline > li
{
display:block;
} 

p{
margin-top:0px;
margin-rigth:50px;
magin-left:70px;
margin-bottom:0px;
background-color: ##BBD2E1;

}
.mini-box{width:320px;height:115px;-moz-border-radius:2px;border-radius:5px;padding:1.5em 1em;
	background:transparent;
	margin-right:-12px;}
.mini-box ul{color:black;}
.mini-box ul li:before{font-family:FontAwesome;content:"\f105";margin-right:1px;color:#ED1C24;height:2em;list-style:none;}

.online-become-educarriere-1x{
	background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url('banner3.jpg');
    background-size: cover;
    background-repeat: no-repeat;
	background-attachment: fixed;
	margin-top: -40px;
}
.become-educarriere{
	border-right: 0;
	border-left: 0;
}
.become-educarriere-left{}
.become-educarriere-right{
	padding: 90px 20px;
}
.become-educarriere-left img{
	object-fit: cover;

}
.become-educarriere-right h3,
.become-educarriere-left h3 {
	
	font-size: 40px;
	color: #f1f1f1;
	font-weight: 600;
	margin-bottom: 20px;
}
.become-educarriere-right p,
.become-educarriere-left p {
	font-size: 15px;
	font-weight: 400;
	color: #f1f1f1;
	margin-bottom: 30px;
}

.flex-row {
    flex-direction: row !important;
}
.d-flex {
    display: flex !important;
}
.bg-success {
    background-color: #00c292 !important;
}
.align-self-center {
    align-self: center !important;
}
.text-success {
    color: #00c292 !important;
}
.text-muted {
    color: #6c757d !important;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: 0;
}
</style>  

<noscript><img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=gnOeg1awAe002I" style="display:none" height="1" width="1" alt="" /></noscript>

</head>
<body> 

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
background-color:F5FFFA;
}
div.limiter_img_change {
	width: 300px;
	height:600px;
	overflow:hidden;
}

#portfolio{
    list-style-type: none;
	margin: 0;
padding: 0; 
}
ul#portfolio li img{
    border: none;
}
#portfolioYoomee{
    list-style-type: none;
	margin: 0;
padding: 0;
}
ul#portfolioYoomee li img{
    border: none;
}
#africsearch{
    list-style-type: none;
	margin: 0px auto;
	width:728px;
padding: 0;
height:90px;
overflow:hidden;
}
ul#africsearch li img{
    border: none;
}
#PROMO{
    list-style-type: none;
	margin: 0px auto;
	width:970px;
padding: 0;
height:90px;
overflow:hidden;
}
ul#PROMO li img{
    border: none;
}
#IUGB{
    list-style-type: none;
	margin: 0px auto;
	width:300px;
padding: 0;
height:600px;
overflow:hidden;
}
ul#IUGB li img{
    border: none;
}
#BAD{
    list-style-type: none;
	margin: 0px auto;
	width:970px;
padding: 0;
height:90px;
overflow:hidden;
}
ul#BAD li img{
    border: none;
}
#CDISCOUNT{
    list-style-type: none;
	margin: 0 auto;
padding:4;
height:50px;
overflow:hidden;
}
ul#CDISCOUNT li img{
    border: none;
}
#JDA{
    list-style-type: none;
	margin: 0 auto;
padding:0;
height:460px;
overflow:hidden;
}
ul#JDA li img{
    border: none;
}

</style>
 <style type="text/css">
 .gsib_a {
    padding-right: 8px;
    padding-left: 8px;
    padding-top: 0px;
}
.search-form .gsc-search-button {
    display: none;
}
 </style> 

<header id="navigation">
<div class="navbar" role="banner">


 <!-- Top Content-->
 <div class="topbar">
 <div id="topbar" class="navbar-header">	
<div style="width:100%; background:#090;">
<div class="container">
<div class="preheader">
<div class="row">
<div class="preheader-container">
</div>
</div>
</div> 
</div>
</div>
 <div id="traitfin"></div>
<div class="main-content">
<div class="container">
<div class="row">
<div class="text-align col-md-3 col-sm-12 margin-top margin-bottom "><a href="http://www.ifi.vnu.edu.vn/"><img src="banniere.JPG" border="0" width="1250" height="100"/></a></div>
<div class="col-md-9 col-xs-12 col-sm-12 margin-top margin-bottom ">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
 <div id="menubar">	
<nav class="navbar tableMenu" role="navigation">
<div class="container">
	<a href="\GestionStage\Partage" style="color:#FFF">Partager un lien</a>	
<form action="LoginServlet" method="post" autocomplete="off">	
		<input type="email" name="email" placeholder="Email" autofocus="autofocus" style="border-radius: 10px; padding: 5px">
		<input type="password" name="password" placeholder="Password" style="border-radius: 10px; padding: 5px">
		<input type="submit" value="Se Connecter" class="btn btn-primary">
</form>		
</nav>
</div>
</div>
 </header> 
<div class="page-breadcrumbs">
		<div class="row">
		<div class="col-md-2">
		<h1 class="section-title"  >Nos Offres de Stages</h1>	
		</div>
		<div class="col-md-10">
<form method="post" action="AccueilServlet" autocomplete="off">
		<select name="critere" placeholder="Fonction">
		<option value="titre">Titre</option>
		<option value="lieu">Lieu</option>
		<option value="categorie">Categorie</option>
		</select> <input type="text" name="search" placeholder="Tapez un mot Clé" />
		<button type="submit">Rechercher</button>
</form>
</div>
</div>
</div>
<div class="section">
<div class="row">
<div class="col-md-8 col-sm-12">
<div class="row">
<div class="col-sm-12">
<div class="left-content">
<div id="content-area"> 								
<ul id="myList">
<c:forEach items="${listeoffre}" var="list">
<li style="display: list-item;">
<div class="box row">
<div class="thumb col-md-2 col-xs-6"> <img src="stage-1.jpg" width="80" height="80" border="0"/></div>
<div class="col-md-2 col-xs-6 visible-xs-* hidden-md visible-sm-* hidden-lg"> <a href="nos-offres?typeoffre=emploi" class="btn-1 btn-color-1 ripple">Stage</a> </div>
<div class="text-col post small-post col-md-8 col-xs-12" style="border-bottom:none;">
<h4><a href="${list.lienoffres}" target="_blank">${list.titre}</a></h4>
<p class="entry-title"><a href="">${list.description}</a></p>         
</div>
 <div class="text-col col-md-12 ">
<a href="#" class="text"><div class="fb-share-button" data-href="offre-47845-animatrices-de-ventes-en-grandes-surfaces.html" data-type="button_count"></div></a>
 <a href="#" class="text"><i class="fa fa-calendar"></i><strong>Date début:</strong> <span style="color:#FF0000;">${list.debut}</span> </a> 
 <a href="#" class="text"><i class="fa fa-calendar"></i><strong>Duree:</strong> <span style="color:#FF0000;">${list.duree} Mois</span> </a> 
 <a href="#" class="text"><i class="fa fa-map-marker"></i> ${list.lieu}</a> 
 <!--<a href="Javascript:openPopup('emploi_offre_envoi.php?OffreId=zjX515j492r534VwN226','100','200','600','350','yes');" class="text"><button class="btn btn-success" style="padding: 2px 7px; text-transform:none;font-size: 11px;"><i class="fa fa-envelope"></i> Envoyer</button></a>--> 
 </div>
 </div>
</li>
</c:forEach>
</ul>
<div id="loadMore"> <a href="" class="load-more"><i class="fa fa-graduation-cap"></i>Toutes les Offres d'Emploi et de stage</a></div>
</div>                            
</div>
</div>		
</div>
</div>
<div class="col-md-4 col-sm-12">
<div class="white-container widget text-center">
	<img src="http://www.educarriere.ci/pics/pub.png" width="67" height="5" /> 
<div id="Demipage">
<a href="http://ifi.edu.vn/fr/news/Admissions/Appel-a-candidatures-Bourses-pour-les-Masters-Informatiques-de-l-IFI-2018-575.html" target="_blank"><img src="image-bourse.jpg" class="shadow img img-responsive" border="0" style="margin: 0 auto;" width="300" height="600" /></a>
</div>
</div>
<div class="white-container widget text-center">
	<img src="http://www.educarriere.ci/pics/pub.png" width="67" height="5" />
<div id="Demipage">
<a href="" target="_blank"><img src="http://www.educarriere.ci/pubs/pics/Demipage-KPMG15OCT2018.jpg" class="shadow img img-responsive" border="0" style="margin: 0 auto;"/></a>

</div>
</div>
</div>
</div>                              
</div>					
</div>			 
</div>				
</div><!--/.section-->
</div><!--/.container-->
</div><!--/#main-wrapper--> 
<footer id="footer">
<div class="footer-top">
<div class="container text-center"> 
</div>
</div>
<div class="bottom-widgets">
<div class="container">
<div class="row">
<div class="col-md-2">
<h3><a href="http://news.educarriere.ci" class="offre_emploi_resume">Actualit&eacute;s</a></h3>
<span><a href="http://news.educarriere.ci" >A la Une</a></span> 
<span><a href="http://news.educarriere.ci/rubrique-emploi-entrepreneuriat">Emploi/Entrepreneuriat</a></span>
<span><a href="http://news.educarriere.ci/rubrique-education-formation">Education/Formation</a></span>
<span><a href="http://news.educarriere.ci/rubrique-economie-finance">Economie/Finance</a></span>
<span><a href="http://news.educarriere.ci/rubrique-sports">Sports</a></span>
<span><a href="http://news.educarriere.ci/rubrique-sante">Santé</a></span>
<span><a href="http://news.educarriere.ci/rubrique-arts-culture">Arts/Culture</a></span>
<span><a href="http://news.educarriere.ci/rubrique-ntic">NTIC</a></span>
<span><a href="http://news.educarriere.ci/rubrique-politique">Politique</a></span>
<span><a href="http://news.educarriere.ci/rubrique-divers">Faits divers</a></span>
<span><a href="http://news.educarriere.ci/rubrique-afrique-monde">Afrique/Monde</a></span>
<span><a href="http://news.educarriere.ci/rubrique-people">People</a></span>
<span><a href="http://news.educarriere.ci/rubrique-societe">Société</a></span>							   
</div>
<div class="col-md-2">
<h3><a href="http://emploi.educarriere.ci" class="offre_emploi_resume">Emploi</a></h3>
<span><a href="http://emploi.educarriere.ci/">Offres d'Emploi & de Stage </a></span> 
<span><a href="http://emploi.educarriere.ci/nos-recruteurs">Entreprises qui recrutent </a></span> 
<span><a href="http://emploi.educarriere.ci/conseils-rh">Conseils RH </a></span> 
<span><a href="http://emploi.educarriere.ci/candidat/inscription-candidat" class="offre_emploi_resume2">Compte canditat</a></span> 
<span><a href="http://emploi.educarriere.ci/recruteur" class="offre_emploi_resume2">Compte recruteur</a></span> 
</div>
<div class="col-md-2">
<h3><a href="http://formation.educarriere.ci" class="offre_emploi_resume">Formation</a></h3>
<span><a href="http://formation.educarriere.ci/index.php?page=examens-concours" class="offre_emploi_resume2">Examens &amp; Concours</a></span> 
<span><a href="http://formation.educarriere.ci/index.php?page=testspsycho" class="offre_emploi_resume2">Tests Psychotechniques</a></span>
<span><a href="http://entrepreneuriat.educarriere.ci/index.php?page=guide" class="offre_emploi_resume2">Guide de l'Entrepreneur </a></span>
<span><a href="http://formation.educarriere.ci/index.php?page=etudes-etranger" class="offre_emploi_resume2">Etudier à l'étranger</a></span>
<span><a href="http://formation.educarriere.ci/index.php?page=mba" class="offre_emploi_resume2">Postuler à un MBA</a></span>
<span><a href="http://formation.educarriere.ci/index.php?page=fonction-achats" class="offre_emploi_resume2">La fonction Achats</a></span>
</div>
<div class="col-md-2">
 <h3><a href="http://entrepreneuriat.educarriere.ci" class="offre_emploi_resume">Entrepreneuriat</a></h3>
<span><a href="http://entrepreneuriat.educarriere.ci/index.php?page=news" class="offre_emploi_resume2">News sur l'Entrepreneuriat </a></span> 
      <span><a href="http://formation.educarriere.ci/index.php?page=guide-metiers" class="offre_emploi_resume2">Guide des métiers</a></span>
      <span><a href="#" class="offre_emploi_resume2">Investir en C&ocirc;te d'Ivoire</a></span>
        <span><a href="http://www.educarriere.ci/index_ebussiness_plan.php" target="_blank" class="offre_emploi_resume2">E-Business Plan</a></span>
</div>
<div class="col-md-2">
<h3><a href="http://concepts.educarriere.ci" class="offre_emploi_resume">Nos Concepts</a></h3>
<span><a href="http://concepts.educarriere.ci/index.php?page=concepts-gmc" class="offre_emploi_resume2">Global Management Challenge</a></span>
<span><a href="http://concepts.educarriere.ci/index.php?page=concepts-te" class="offre_emploi_resume2">Les Troph&eacute;es de l'Excellence</a></span>
</div>
<div class="col-md-2">
<h3> <a href="http://services.educarriere.ci" class="offre_emploi_resume">Nos Services</a></h3>
<span><a href="http://services.educarriere.ci" class="offre_emploi_resume2">Aux Educanautes</a></span>
 <span><a href="http://services.educarriere.ci" class="offre_emploi_resume2">Aux Entreprises</a></span>
</div>
</div>  
</div>
</div>
<div class="footer-bottom">
<div class="container text-center">
<div class="col-md-12 margin-top text-center hidden-sm hidden-xs">
<div align="center" class="Texte_black_mini">Copyright &copy; 2004-2018 - <a href="http://www.educarriere.ci/">Educarriere.ci</a> - Tous droits r&eacute;serv&eacute;s - Tél : <strong>22 44 44 48
</strong> / Hotlines : <strong> 55 14 14 14 – 41 41 14 14</strong></strong> - Email : <strong>ci@educarriere.net</strong></div>
</div>
<div class="col-xs-12 col-sm-12 hidden-md hidden-lg margin-top text-center ">
<div align="center" class="Texte_black_mini">Copyright &copy; 2004-2018 - <a href="http://www.educarriere.ci/">Educarriere.ci</a> <br> Tous droits r&eacute;serv&eacute;s - Tél : <strong>22 44 44 48
  </strong> <br> Hotlines : <strong> 55 14 14 14 –  41 41 14 14</strong></strong> <br> Email : <strong>ci@educarriere.net</strong></div>
</div>
</div>
</div>
</footer>
<div id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top affix">
<button class="btn btn-primary" title="Back to Top">
					<i class="fa fa-angle-double-up"></i>
</button>
</div>
<script>
        (function (d) {
            if (window.afrikadInit == null) {
                window.afrikadInit = function (sdk) {
                    sdk.autoload();
                };
            }

            var js, ajs = d.getElementsByTagName('script')[0];
            if (d.getElementById('afrikad-sdk')) {
                return;
            }
            js = d.createElement('script');
            js.id = "afrikad-sdk";
            js.src = "https:\/\/www.afrikad.com\/build\/latest\/js\/sdk.js";
            ajs.parentNode.insertBefore(js, ajs);
        }(document));
</script>	
    <script type="text/javascript" src="js_new/jquery.min.js"></script>
    <script type="text/javascript" defer src="js_new/bootstrap.min.js"></script> 
<script type="text/javascript" defer src="js_new/owl.carousel.min.js"></script>     
    <script type="text/javascript" defer src="js_new/main.js"></script> 
	 <script type="text/javascript" defer src="js_new/scrollTop.js"></script>  
	<script type="text/javascript"  src="config/fonctions.js"></script>
<script type="text/javascript"  src="emploi_consultez_cv_ajax.js"></script>
<script type="text/javascript"  src="emploi_offres_ajax.js"></script>
 <script type="text/javascript" src="http://www.educarriere.ci/js/jquery.innerfade.js"></script>

<script type="text/javascript">
$(document).ready(
function(){  
    
    $('ul#portfolio').innerfade({
    speed: 1000,
    timeout: 10000,
    type: 'random_start',
    containerheight: '600px'
    });
    
	  $('ul#africsearch').innerfade({
    speed: 1000,
    timeout: 10000,
    type: 'random_start',
    containerheight: '90px',
	containerwidth: '728px'
    });
	  $('ul#PROMO').innerfade({
    speed: 1000,
    timeout: 10000,
    type: 'random_start',
    containerheight: '90px',
	containerwidth: '970px'
    });
	 $('ul#IUGB').innerfade({
    speed: 1000,
    timeout: 10000,
    type: 'random_start',
    containerheight: '600px',
	containerwidth: '300px'
    });
	 $('ul#BAD').innerfade({
    speed: 1000,
    timeout: 10000,
    type: 'random_start',
    containerheight: '90px'
    });
	 $('ul#CDISCOUNT').innerfade({
    speed: 1000,
    timeout: 10000,
    type: 'random_start',
    containerheight: '50px'
    });
	 $('ul#JDA').innerfade({
    speed: 1000,
    timeout: 10000,
    type: 'random_start',
    containerheight: '460px'
    });
    //type: 'random_start', 'random', 'sequence', 

});
</script> 
 	 <script type="text/javascript" src="js_new/select2.min.js"></script>
	 <script src="js_new/jquery.youtube-inview-autoplay.js"></script>
<script>
// Load the IFrame Player API code asynchronously.
  var tag = document.createElement('script');
  tag.src = "https://www.youtube.com/player_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  function onYouTubeIframeAPIReady() {
    $('.youtube-video').inViewAutoplay({
      autohide: 1,
      modestbranding: 1,
      rel: 0,
      quality: 'hd720'
    });
  }
</script>  
<script type="text/javascript">
  $('select').select2({
	search:true  
  });
</script>

<!--  Popup interstitiel -->

<style>

.modal {

  text-align: center;

  padding: 0!important;

}
.modal:before {
  content: '';
  display: inline-block;
  height: 100%;
  vertical-align: middle;
  margin-right: -4px;

}

.modal-dialog {

  display: inline-block;

  text-align: left;

  vertical-align: middle;

}

</style> 
</body>
</html>