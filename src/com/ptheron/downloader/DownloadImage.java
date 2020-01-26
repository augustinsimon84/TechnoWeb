package com.ptheron.downloader;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ptheron.ir.dto.ImageDto;
import com.ptheron.is.dao.ImageDao;
import com.ptheron.util.DBConnection;


@WebServlet("/DownloadImage")
public class DownloadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// vidéo2
		ImageDao dao = null;
		ServletOutputStream outputStream = null;
		String id = req.getParameter("id");
		dao = new ImageDao();
		byte[] image = dao.getImage(id);
		
		outputStream = resp.getOutputStream();
		outputStream.write(image);
		outputStream.close();
		//
		
		/*
		byte[] img = null;
		ServletOutputStream os = null;
		
		HttpSession session = req.getSession();
		String emailSession = (String)session.getAttribute("email");
		String sqlQuery = "SELECT image FROM houses WHERE id_user = (SELECT id_user FROM login WHERE email="+"'"+emailSession+"'"+")";
		
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sqlQuery);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				img = rs.getBytes(1);
			}
			os = resp.getOutputStream();
			os.write(img);
			
		} catch(Exception e) {
			e.printStackTrace();
			
		}
		*/
	}
}
