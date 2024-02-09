package ServletPackege;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterS")
public class RegisterS extends HttpServlet {
	
   
   

	


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	String name		= 	request.getParameter("fname");
	String password	= 	request.getParameter("fpass");
	String email	= 	request.getParameter("femail");
	String mno			= request.getParameter("fmno");
	String address	= 	request.getParameter("faddress");
	String dob		= 	request.getParameter("fdob");

	
	
	//PreparedStatement pre =null;
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		//= = DriverManager.getConnection("jdbc:mysql//localhost:3306/Myedatabase?user=root&password=Rewa@123");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Myedatabase?user=root&password=Rewa@123");
		
		
		PreparedStatement pre = con.prepareStatement("insert into ptable3 values(?,?,?,?,?,?)");
		pre.setString(1, name);
		pre.setString(2, password);
		pre.setString(3, email);
		pre.setString(4, mno);
		pre.setString(5, address);
		pre.setString(6,dob);
		int rd = pre.executeUpdate();
		while(rd>0) {
			pw.println("<h2>Successfully Register into database</h2>");
			
		}
		}
	catch(Exception e1) {
		System.out.println("Stament error");
	}
	
	}
	
	

}
