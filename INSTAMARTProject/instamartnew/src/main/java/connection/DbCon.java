package connection;

import java.sql.*;

public class DbCon {
	 private static final String URL = "jdbc:mysql://localhost:3306/instamartsql?useSSL=false&allowPublicKeyRetrieval=true"; // Database URL
     private static final String USER = "root"; // Your MySQL username
     private static final String PASSWORD = "Krishnasingh@9811"; // Your MySQL password

	private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection(URL,USER,PASSWORD);
            System.out.print("connected");
        }
        return connection;
    }
}