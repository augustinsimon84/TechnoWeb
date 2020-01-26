package com.ptheron.is.dao;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.sql.*;

import com.ptheron.ir.controller.ImageViewerController;
import com.ptheron.ir.dto.ImageDto;
import com.ptheron.util.DBConnection;

public class ImageDao {
	
	
	public String sqlQuery = null;
	//public String sqlImageQuery = null;

	//private final String GET_DATA = sqlQuery;
	private final String GET_IMAGE_QUERY = "SELECT image FROM houses WHERE idhouses=?";
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<ImageDto> getData() {
		
		ImageDto imageDto = null;
		List<ImageDto> imageList = new ArrayList<ImageDto>();
		
		try {
			con = DBConnection.getConnection();
			//ps = con.prepareStatement(GET_DATA);
			ps = con.prepareStatement(sqlQuery);
		 	rs = ps.executeQuery();
		 	
		 	while(rs.next()) {
		 		imageDto = new ImageDto();
		 		//String id = rs.getString(1);
		 		imageDto.setId(rs.getString(1));
		 		imageDto.setName(rs.getString(2));
		 		imageDto.setArea(rs.getString(3));
		 		imageDto.setCity(rs.getString(4));
		 		imageList.add(imageDto);
		 	
		 	}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return imageList;
		
	}
	
	public byte[] getImage(String id) {
		
		byte[] image = null;
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(GET_IMAGE_QUERY);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				image = rs.getBytes(1);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return image;
	}
}
