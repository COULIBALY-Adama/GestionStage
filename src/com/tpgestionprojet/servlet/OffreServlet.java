package com.tpgestionprojet.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

import com.tpgestionprojet.controleur.ConnexionBD;
import com.tpgestionprojet.controleur.OffreControl;
//import com.tpgestionprojet.controleur.UserControl;
//import com.tpgestionprojet.controleur.UserControl;
import com.tpgestionprojet.controleur.VisiteurControl;
import com.tpgestionprojet.model.OffreModel;


@WebServlet("/OffreServlet")
public class OffreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	ConnexionBD bdd;
	Connection connec;
	Statement stat;
	ResultSet resultat; 
	
    public OffreServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		VisiteurControl vst = new VisiteurControl();
		
		String ids = request.getParameter("idvis");
		int idse = Integer.parseInt(ids);
		String libelle = vst.RecupererLienOffre(idse);
		request.setAttribute("lib", libelle);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/OffreVue.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {    
		HttpSession session = request.getSession ();
		
		String titre = request.getParameter("titre");
		String description = request.getParameter("description");
		String duree = request.getParameter("duree");
		String debut = request.getParameter("debut");
		String lieu = request.getParameter("lieu");
		String service = request.getParameter("service");
		String categorie = request.getParameter("categorie");
		String lienoffres = request.getParameter("idvis");
	    String lien = request.getParameter("idvis");
		//String idadmin = request.getParameter("idadmin");
		
		int idad = (int) session.getAttribute("id");
		int idviss = (int) session.getAttribute("ide");
		
		
		OffreControl offcont = new OffreControl();
		OffreModel offrs = new OffreModel();
		
		
		offrs.setTitre(titre);
		offrs.setDescription(description);
		offrs.setDuree(duree);
		offrs.setDebut(debut);
		offrs.setLieu(lieu);
		offrs.setService(service);
		offrs.setCategorie(categorie);
		offrs.setLienoffres(lienoffres);
		//offrs.setLienoffres(idvis);
		offrs.setIdadmin(idad);
		
		offcont.ajouter(offrs);
		
		// envoi de mail
		
		  Properties props = new Properties();
	      props.put("mail.smtp.host", "smtp.ifi.edu.vn");
	      props.put("mail.from", "arama_p22@ifi.edu.vn");
	      Session sess = Session.getInstance(props, null);
	      
	      bdd = new ConnexionBD();
			String emailetudiant ="";
		
			try {
				PreparedStatement stat = bdd.connect().prepareStatement("select studentemail, studentname from etudiant");
				resultat = stat.executeQuery();
				while(resultat.next()){ 
					emailetudiant = resultat.getObject(1).toString();
					String nom = resultat.getObject(2).toString();
					 try 
				      {
				         MimeMessage msg = new MimeMessage(sess);
				         msg.setFrom();
				         msg.setRecipients(Message.RecipientType.TO,emailetudiant);
				         msg.setSubject("[Sujet de Stage] " +titre);
				         msg.setSentDate(new Date());
				         msg.setText("Bonjour "+nom+",\r\n" + 
				        		"\r\n" + 
				        		"Une offre de Stage "+ titre +" a "+lieu+ " d'une durée de 0"+duree+" mois.\r\n" + 
				        		"Pour plus d'information veuillez accéder au lien suivant: "+lien
				        		);
				        Transport.send(msg);
				      } 
				      catch (MessagingException mex) 
				      {
				         System.out.println("send failed, exception: " + mex); 
				      }
				      response.setContentType("text/html");
				      PrintWriter out = response.getWriter();
			      }
			} 
			catch (SQLException ex) {
					ex.printStackTrace();
				}
			
			String redirectURL = "/GestionStage/accueil";
		    response.sendRedirect(redirectURL);
	    //  System.out.println("Message envoyé");
	      
			/*try {
				//connec.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
	}

}
