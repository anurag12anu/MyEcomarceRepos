package ServletPackege;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DatabaseMetaData;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VeiwReserSer")
public class VeiwReserSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Myedatabase?user=root&password=Rewa@123");
			
			PreparedStatement pre = con.prepareStatement("select * from ptable3");
			pw.print("<table width=75% border=1>");
			pw.print("<caption>user resul:</caption>");
			ResultSet rs = pre.executeQuery();
			ResultSetMetaData rsd = rs.getMetaData();
			int totalCol = rsd.getColumnCount();
			pw.print("<tr>");
			for(int i=1;i<=totalCol;i++) {
				pw.print("<th>"+rsd.getColumnName(i)+"</th");
				
				
			}
			pw.print("</tr>");
			
			
			while(rs.next()) {
				
				pw.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
			System.out.println("resulset success");
				
				
			}
			pw.println("</table>");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("select com error");
		} 
		pw.println("<a href='Veiw.jsp'>");
		pw.close();
	}

}
