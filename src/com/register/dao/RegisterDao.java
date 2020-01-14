package com.register.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class RegisterDao {
	String sql = "INSERT INTO login(email, pass, nom, prenom, telephone) VALUES(?, ?, ?, ?, ?)";
	//String url = "jdbc:mysql://localhost:8889/bddtest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String url = "jdbc:mysql://localhost:8889/bddtest";
	String username = "root";
	String password = "root";
	
	public boolean check2(String nom, String prenom, String email, String telephone, String mdp)
	{
		int updateQuery = 0;
		
		if (nom!=null && prenom!=null && email!=null && telephone!=null && mdp!=null) {
			if (nom!="" && prenom!="" && email!="" && telephone!="" && mdp!="") {
				
				try {
					
					//connector version 5
					//Class.forName("com.mysql.jdbc.Driver");
					
					//connector version 8
					Class.forName("com.mysql.cj.jdbc.Driver");
					
					Connection con = DriverManager.getConnection(url, username, password);
					PreparedStatement pst = con.prepareStatement(sql);
					
					pst.setString(1, email);
					pst.setString(2, mdp);
					pst.setString(3, nom);
					pst.setString(4, prenom);
					pst.setString(5, telephone);
					
					updateQuery = pst.executeUpdate();
					
					System.out.println("data is successfully inserted");					
					return true;
					
				} catch (Exception e) {
					
					e.printStackTrace();
				}
			}
		}
		
		return false;
	}
}
