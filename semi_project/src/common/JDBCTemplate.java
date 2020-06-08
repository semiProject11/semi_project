package common;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;



public class JDBCTemplate {

	public static Connection getConnection() {
		Connection conn = null;
		Properties prop = new Properties();
		
		String fileName = JDBCTemplate.class.getResource("/sql/driver.properties").getPath();
		
		
		
		try {
			prop.load(new FileReader(fileName));
			
			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			String user = prop.getProperty("user");
			String pwd = prop.getProperty("password");
			
			
			Class.forName(driver);
			
			
			conn = DriverManager.getConnection(url,user,pwd);
			
			
			conn.setAutoCommit(false);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}

	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				commit(conn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		public static void rollback(Connection conn) {
			try {
				if(conn != null && !conn.isClosed()) {
					rollback(conn);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				close(conn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				close(stmt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) {
				close(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
