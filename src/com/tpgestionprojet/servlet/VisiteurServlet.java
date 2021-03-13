package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.tpgestionprojet.controleur.UserControl;
import com.tpgestionprojet.controleur.VisiteurControl;
//import com.tpgestionprojet.model.UserModel;
import com.tpgestionprojet.model.VisiteurModel;

@WebServlet("/VisiteurServlet")
public class VisiteurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VisiteurServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		 // doPost(request, response);
		
			VisiteurControl vitiscon = new VisiteurControl();
			
			request.setAttribute("ListeLiens", vitiscon.listeoffreVis());
			
			//System.out.println("taille des liens"+vitiscon.listeoffreVis().size());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/VisiteurVue.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String reference = request.getParameter("reference");
		String email = request.getParameter("email");
		String DatePart = request.getParameter("DatePart");
		String lienoffre = request.getParameter("lienoffre");
				
		
		VisiteurModel visit = new VisiteurModel();
		VisiteurControl contlr = new VisiteurControl();
		
		
		
		visit.setReference(reference);
		visit.setEmail(email);
		visit.setDatePart(DatePart);
		visit.setLienoffre(lienoffre);
		
		contlr.ajouter(visit);
		
		String redirectURL = "/GestionStage/accueil";
	    response.sendRedirect(redirectURL);
		
	}
}
