package com.ptheron.ir.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ptheron.ir.dto.ImageDto;
import com.ptheron.is.dao.ImageDao;


@WebServlet("/ImageViewerController")
public class ImageViewerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String emailSession = (String)session.getAttribute("email");
		String sql = "SELECT idhouses, type, superficie, ville FROM houses WHERE id_user = (SELECT id_user FROM login WHERE email="+"'"+emailSession+"'"+")";
		//String sql2 = "SELECT image FROM houses WHERE idhouses=? AND id_user = (SELECT id_user FROM login WHERE email="+"'"+emailSession+"'"+")";
		
		
		ImageDao imageDao = null;
		imageDao = new ImageDao();
		
		//
		imageDao.sqlQuery = sql;
		//imageDao.sqlImageQuery = sql2;
		//
		
		List<ImageDto> list =  imageDao.getData();
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("image.jsp");
		dispatcher.forward(req, resp);
	}
}
