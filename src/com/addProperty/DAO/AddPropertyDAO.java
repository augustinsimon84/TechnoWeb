package com.addProperty.DAO;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.Part;

import java.io.FileNotFoundException;


import com.mysql.cj.Session;

public class AddPropertyDAO {
	
	String sql2 = "SELECT id_user FROM login WHERE email=?";
	String sql = "INSERT INTO houses(id_user, type, superficie, pieces, code_postal, ville, pays, image) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	String url = "jdbc:mysql://localhost:8889/bddtest";
	String username = "root";
	String password = "root";

	public boolean check3(String email, String area, String rooms, String type, String city, String state, String zip, Part filePart)
	{
		int updateQuery = 0;
		
		if (area!=null && rooms!=null && type!=null && city!=null && state!=null && zip!=null) {
			if (area!="" && rooms!="" && type!="" && city!="" && state!="" && zip!="") {
				
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					
					Connection con = DriverManager.getConnection(url, username, password);
					
					// code pour récup l'ID du user à partir du mail
					/**/
					ResultSet resultSet = null;
				
					PreparedStatement pst2 = con.prepareStatement(sql2);
					pst2.setString(1, email);
				
					resultSet = pst2.executeQuery();
					
					String userId = "";
					
					while(resultSet.next()) {
									
						userId = resultSet.getString("id_user");
					}
					System.out.println(sql2);
					System.out.println(userId);
					/**/
					
					
					PreparedStatement pst = con.prepareStatement(sql);
					
					pst.setString(1, userId);
					pst.setString(2, type);
					pst.setString(3, area);
					pst.setString(4, rooms);
					pst.setString(5, zip);
					pst.setString(6, city);
					pst.setString(7, state);
					
					
					InputStream inputStream = null;
					
					if (filePart != null) {
						long fileSize = filePart.getSize();
						String fileContent = filePart.getContentType();
						inputStream = filePart.getInputStream();
					}
					
					pst.setBlob(8, inputStream);
					
					//updateQuery = pst.executeUpdate();
					updateQuery = pst.executeUpdate();
					
					if (updateQuery == 0) {
						System.out.println("échec de l'import");
					
					} else {
						System.out.println("data is successfully inserted");
					}
										
					return true;
					
				} catch (Exception e) {
					
					e.printStackTrace();
				}
			}
		}
		
		return false;
	}
}
