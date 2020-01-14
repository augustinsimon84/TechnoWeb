package com.addProperty;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.addProperty.DAO.AddPropertyDAO;
import com.login.dao.LoginDao;

/**
 * Servlet implementation class AddProperty
 */
@WebServlet("/AddProperty")
public class AddProperty extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String area = request.getParameter("area");
		String rooms = request.getParameter("nb_rooms");
		String type = request.getParameter("type");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		
		// test
		/**/
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		/**/
		
		AddPropertyDAO dao3 = new AddPropertyDAO();
		
		if(dao3.check3(email, area, rooms, type, city, state, zip))
		{
			//HttpSession session = request.getSession();
			//session.setAttribute("email", email);
			response.sendRedirect("espaceClient.jsp");

		}
		else
		{
			System.out.println("échec de l'ajout");
			response.sendRedirect("espaceClient.jsp");
		}
	}
}
