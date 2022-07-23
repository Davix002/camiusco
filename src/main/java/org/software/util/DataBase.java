package org.software.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBase {

	/* public static void main(String[] args) {
        
    } */

	private String dbUrl=System.getenv().get("JDBC_DATABASE_URL");
	private String dbPassword=System.getenv().get("JDBC_DATABASE_PASSWORD");
	private String dbUsername=System.getenv().get("JDBC_DATABASE_USERNAME");

	public Connection getConnection(String profile) {

		Connection connection = null;

		String JndiDataSourceName = "";
		if (profile.equals("admin")) {
			JndiDataSourceName = "eCommerceAdminDS";
		}

		if (profile.equals("client")) {
			JndiDataSourceName = "eCommerceClientDS";
		}
		
		if (profile.equals("guest")) {
			JndiDataSourceName = "eCommerceGuestDS";
		}
		System.out.println("JndiDataSourceName: " + JndiDataSourceName);
		try {
			connection = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		}
		return connection;
	}

	public void closeObject(Connection connection) {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeObject(PreparedStatement preparedStatement) {
		try {
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeObject(Statement statement) {
		try {
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeObject(ResultSet resultSet) {
		try {
			resultSet.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
