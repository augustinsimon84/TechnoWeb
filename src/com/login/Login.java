package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;


@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String identifiant=request.getParameter("identifiant");
			String mdp=request.getParameter("mdp");
			
			LoginDao dao = new LoginDao();
			
			if(dao.check(identifiant, mdp))
			{
				HttpSession session = request.getSession();
				session.setAttribute("identifiant", identifiant);
				response.sendRedirect("espaceClient.jsp");
				
			}
			else
			{
				response.sendRedirect("login.jsp");
			}
	}

}
