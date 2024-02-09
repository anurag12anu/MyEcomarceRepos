package ServletPackege;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	String user=request.getParameter("name1");
	String	pass=request.getParameter("pass1");
		
				
			
				//response.getWriter().append("Served at: ").append(request.getContextPath());
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Myedatabase?user=root&password=Rewa@123");
			
			
				 PreparedStatement pre = con.prepareStatement("select *from Myetable where username=? and password=?");
				pre.setString(1, user);
				pre.setString(2, pass);
				ResultSet rs = pre.executeQuery();
				if(rs.next()==true) {
					pw.println("<h2>Success login</h2>");
					response.sendRedirect("Admin.jsp");
				
				
				}
				else {
					pw.println("<h2> not Success login</h2>");
				}
			} catch (Exception e) {
				System.out.println("errer");
			}
			pw.print("Username:"+user);
			pw.print("password:"+pass);
		

	}

}
