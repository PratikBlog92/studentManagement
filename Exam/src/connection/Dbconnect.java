package connection;

import java.sql.Connection;
import java.sql.DriverManager;

import com.sun.org.apache.bcel.internal.generic.RETURN;

public class Dbconnect {

	static Connection conn = null;
	public static Connection getConnection()
	{
		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn =	DriverManager.getConnection("jdbc:mysql://localhost:3306/Exam","root","");
			System.out.println("Connectted To DataBase");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}


}
