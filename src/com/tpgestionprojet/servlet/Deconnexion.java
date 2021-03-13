package com.tpgestionprojet.servlet;

import java.io.IOException;	
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Deconnexion")
public class Deconnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Deconnexion() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession ();
		session.removeAttribute("email");
		session.invalidate();
	    
		 String redirectURL = "/GestionStage/accueil";
		 response.sendRedirect(redirectURL);
		//request.getRequestDispatcher( "/WEB-INF/ListeOffre.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		 
	}
}

