package com.login.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// connector version 5
//import com.mysql.jdbc.Statement;

public class LoginDao 
{
	String sql = "SELECT * FROM login WHERE email=? and pass=?";
	//String url = "jdbc:mysql://localhost:8889/bddtest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String url = "jdbc:mysql://localhost:8889/bddtest";
	String username = "root";
	String password = "root";
	
	
	public boolean check(String email, String pass)
	{
		
		System.out.println("Loading driver...");

		try {
			
			//connector version 5
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		    System.out.println("Driver loaded!");
		    
		} catch (ClassNotFoundException e) {
			
		    throw new IllegalStateException("Cannot find the driver in the classpath!", e);
		}
		
		try (Connection con = DriverManager.getConnection(url, username, password)) {
		    System.out.println("Database connected!");
		    
		    PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, email);
			st.setString(2, pass);
			
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			
			}
		} catch (SQLException e) {
		
		    throw new IllegalStateException("Cannot connect the database!", e);
		}
		
		/*
		try {
			
			//connector version 5
			//Class.forName("com.mysql.jdbc.Driver").newInstance();
			
			//connector version 8
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, email);
			st.setString(2, pass);
			
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		*/
		return false;
	}
}
