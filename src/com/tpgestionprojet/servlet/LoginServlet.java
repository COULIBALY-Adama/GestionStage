package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tpgestionprojet.controleur.ConnexionBD;
import com.tpgestionprojet.controleur.OffreControl;
import com.tpgestionprojet.controleur.UserControl;
//import com.tpgestionprojet.model.UserModel;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
ConnexionBD bdd;
 public LoginServlet() {
        super();  
 }
 
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException {
 		
 		HttpSession session = request.getSession ();
 		
 		OffreControl ctr = new OffreControl();
 		UserControl service = new UserControl();
	String email = request.getParameter("email");
	String password = request.getParameter("password");
    if((email == null || email.isEmpty()) || (password == null || password.isEmpty())){
    	request.getRequestDispatcher("/WEB-INF/LoginVue.jsp").forward(request, response);
    }else{
    String message = service.ConnexionAdmin(email, password);
    if(message.equals("SUCCESS")){
    	int idadminis = ctr.RecupIdAdmin(request.getParameter("email"), request.getParameter("password"));
    	String nomadminis = ctr.RecupNomAdmin(request.getParameter("email"), request.getParameter("password"));
    	session.setAttribute("id", idadminis);
    	session.setAttribute("non", nomadminis);
    	request.getRequestDispatcher("/WEB-INF/AccueilAdmin.jsp").forward(request, response);
    }else if(message.equals("FAILURE")){
    	request.getRequestDispatcher("/WEB-INF/LoginVue.jsp").forward(request, response);
    	session.setAttribute ("username", email);
    	}
      }	
 }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    		  throws ServletException, IOException {
	doGet(request, response);
	}		
}
	
	
	 
	
	 
	
	
	
	 
		 	
		  
		  


