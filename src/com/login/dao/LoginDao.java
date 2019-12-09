package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao 
{

	String sql = "select * from login where uname=? and pass=?";
	String url = "jdbc:mysq://localhost:3306/bdd";
	String username = "root";
	String password = "0";
	
	public boolean check(String uname,String pass){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}		
}	

