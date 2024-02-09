package ServletPackege;

import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcClass1 {
Connection con=null;
	
	public JdbcClass1() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		try {
		con =DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagement?user=root&password=Rewa@123");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

	public static void main(String[] args) {
		new JdbcClass1();
		

	}

}
