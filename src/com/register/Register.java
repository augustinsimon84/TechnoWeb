package com.register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;
import com.register.dao.RegisterDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
    
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String mdp = request.getParameter("mdp");
		
		RegisterDao dao2 = new RegisterDao();
		
		if(dao2.check2(nom, prenom, email, telephone, mdp)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("espaceClient.jsp");
			
		} else response.sendRedirect("register.jsp");
	}

}
