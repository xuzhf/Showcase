package com.smartgwt.sample.showcase.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.slf4j.Logger;

public class DB {
	static Logger logger = JobLogFactory.createLogger(DB.class.getName());
//	private static Logger logger = LogManager.getLogger(MyApp.class.getName());
	//trace<debug<info<warn<error<fatal
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		new DB().getConnection();

	}
	
	public static Connection getConnection() {
		Connection conn = null;

		try {
			InputStream in = null;
			try {

				in = new BufferedInputStream(new FileInputStream("D:\\app-ds.properties"));
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			Properties p = new Properties();
			try {
				p.load(in);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			Class.forName(p.getProperty("jdbcDriver", "com.microsoft.sqlserver.jdbc.SQLServerDriver"));
			String user = p.getProperty("jdbcUser");
			String password = p.getProperty("jdbcPassword");
			String server = p.getProperty("jdbcUrl", "jdbc:sqlserver://192.168.1.111:3175;databaseName=QjToba");
			conn = DriverManager.getConnection(server, user, password);
			logger.error("==================");
			System.out.println(conn);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		JobLogFactory.stop(DB.class.getName());
		return conn;
	}

	
	public static void close(ResultSet rs) {

		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static void close(PreparedStatement pstmt) {
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void close(Connection conn) {
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public static void commit(Connection conn){
		
		if(conn!=null)
			try {
				conn.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public static void rollback(Connection conn){
		
		if(conn!=null)
			try {
				conn.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
}
