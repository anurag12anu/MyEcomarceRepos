package ServletPackege;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import  java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserServlete")
public class UserServlete extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PreparedStatement pre =null;
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	String username=request.getParameter("name1");
	String password=request.getParameter("pass1");
	String email=request.getParameter("email1");
	String Phone=request.getParameter("number1");
	String address=request.getParameter("address1");
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Myedatabase?user=root&password=Rewa@123");
	
	
		pre = con.prepareStatement("insert into Myetable values(?,?,?,?,?)");
		pre.setString(1, username);
		pre.setString(2, password);
		pre.setString(3, email);
		pre.setString(4, Phone);
		pre.setString(5, address);
	}catch(Exception e1) {
		System.out.println("Stament error");
	}
		try {
	
		pre.executeUpdate();
	}
	catch(Exception e) {
		System.out.println("error");
		
	}
	}

}
