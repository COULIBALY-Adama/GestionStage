package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgestionprojet.controleur.OffreControl;
import com.tpgestionprojet.controleur.VisiteurControl;


@WebServlet("/AccueilServlet")
public class AccueilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AccueilServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VisiteurControl vts = new VisiteurControl();
        OffreControl offcon = new OffreControl();
		
		String search = request.getParameter("search");
		String critere = request.getParameter("critere");
	    
		if(search != null && critere != null) {
			request.setAttribute("listeoffre", offcon.searchoffres(critere, search));
		} else 
		{
			request.setAttribute("listeoffre", offcon.listeoffres());
		}
		
	
	 	//request.setAttribute("ListeLiens", vts.listeoffreVis());
		this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
		//this.getServletContext().getRequestDispatcher("/WEB-INF/LoginVue.jsp").forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
