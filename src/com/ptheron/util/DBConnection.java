package com.ptheron.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	static Connection con = null;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:8889/bddtest", "root", "root");
		    System.out.println("Database connected!");
		
		} catch (Exception e) {
		    System.out.println(e);
		}
		return con;
	}
}
