package model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegForm")
public class Register extends HttpServlet
{
	@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		PrintWriter out=resp.getWriter();
		
		String id=req.getParameter("Reg-id");
		String name=req.getParameter("Reg-name");
		String email=req.getParameter("Reg-email");
		String password=req.getParameter("Reg-psw");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/instamartsql", "root", "Krishnasingh@9811");
			
			PreparedStatement ps=con.prepareStatement("insert into users(id,name,email,password) values(?,?,?,?)");
			ps.setString(1,id);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, password);
			
			int count=ps.executeUpdate();
			if(count>0)
			{
				resp.setContentType("text/html");
				out.print("<h3 style='color:green;'>User registered successfully</h3>");
				
				RequestDispatcher rd=req.getRequestDispatcher("/SignUp.jsp");
				rd.include(req, resp);
			}
			else
			{
				resp.setContentType("text/html");
				out.print("<h3 style='color:red;'>User not registered due to some error</h3>");
				
				RequestDispatcher rd=req.getRequestDispatcher("/SignUp.jsp");
				rd.include(req, resp);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
			resp.setContentType("text/html");
			out.print("<h3 style='color:red;'> Exception Occured: " + e.getMessage()+"</h3>");
			
			
			RequestDispatcher rd=req.getRequestDispatcher("/SignUp.jsp");
			rd.include(req, resp);
		}
		
	}
}
