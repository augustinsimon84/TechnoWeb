package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// connector version 5
//import com.mysql.jdbc.Statement;

public class LoginDao 
{
	String sql = "select * from login where email=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/bddtest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String username = "root";
	String password = "root";
	
	
	public boolean check(String email, String pass)
	{
		
		try {
			
			//connector version 5
			//Class.forName("com.mysql.jdbc.Driver");
			
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
		
		return false;
	}
}
