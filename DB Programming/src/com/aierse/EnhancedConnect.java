package com.aierse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EnhancedConnect {
	public Connection conn;
	public Statement stmt;
	
	public EnhancedConnect() {
		this("jdbc:mysql://192.168.1.3/db174434", "dbuser174434", "ce1234");
	}

	public EnhancedConnect(String server, String user, String pw) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(server, user, pw);
			stmt = conn.createStatement();
		} 
		catch (Exception e) {
			System.err.println("DB Error" + e.getMessage());
		}
	}
	
	public ResultSet select(String sql) {
		try {
			return this.stmt.executeQuery(sql);
		} 
		catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void close() {
		try {
			this.stmt.close();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
