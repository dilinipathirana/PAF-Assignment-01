package com.login;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//HttpServletRequest httpreq = (HttpServletRequest) request;
		//HttpServletResponse httpResp =(HttpServletResponse) response;
		PrintWriter out= response.getWriter();
		
		
		try {
		
		String uname = request.getParameter("username");
		String passwd = request.getParameter("password");
		
		
		
		String dbName= null;
		String dbPassword=null;
		//String decodedString ;
		
		
		if((uname.matches("Admin") )|| (uname.matches("Sysuser")))
		{
		
		String sql="select Username,Password from Users where Username=? and Password=?";
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Login","root","");
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,uname);
		ps.setString(2, passwd);
		ResultSet rs =ps.executeQuery();
		//PrintWriter out= response.getWriter();
		
		while(rs.next()) {
			dbName=rs.getString(1);
			dbPassword=rs.getString(2);
			
			
		}
		
		//byte[] decodedBytes = Base64.getDecoder().decode(dbPassword);
		//decodedString = new String(decodedBytes);
		
		}
		else {
			String sql2="select Username,Password from Customer where Username=? and Password=?";
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Login","root","");
			
			PreparedStatement ps2 = conn.prepareStatement(sql2);
			ps2.setString(1,uname);
			ps2.setString(2, passwd);
			ResultSet rs2 =ps2.executeQuery();
			
			//PrintWriter out= response.getWriter();
			
			while(rs2.next()) {
				dbName=rs2.getString(1);
				dbPassword=rs2.getString(2);
				
				
			}
			
			//byte[] decodedBytes = Base64.getDecoder().decode(new String(dbPassword).getBytes("UTF-8"));
			//decodedString = new String(decodedBytes);
			//out.println(decodedBytes);
			
			
			
		}
		if(uname.equals(dbName)&& passwd.equals(dbPassword)) {

			HttpSession session = request.getSession(true);	
			session.setAttribute("name",uname);
			String usname =(String)session.getAttribute("name");
			if(usname.matches("Admin"))
			{
			RequestDispatcher req= request.getRequestDispatcher("Homeadmin.jsp");
			req.include(request, response);
			}
			else if(usname.matches("Sysuser"))
			{
				RequestDispatcher req= request.getRequestDispatcher("HomeSystemuser.jsp");
				req.include(request, response);
			}
			else
			{
				RequestDispatcher req= request.getRequestDispatcher("Homecustomer.jsp");
				req.include(request, response);	
				
			}
		}
		
		else {
			
			out.println("<script type =\"text/javascript\">");
			out.println("alert('Invalid Login Credentials !');");
			out.println("location='Login.jsp';");
			out.println("</script>");
			//response.sendRedirect("Login.jsp");
	}
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
			out.println(e);
			
		}
		catch(SQLException e) {
			e.printStackTrace();
			out.println(e);
		}
		
		catch(java.lang.IllegalArgumentException e) {
			e.printStackTrace();
			out.println(e);
		}
		catch(UnsupportedEncodingException e) {
			e.printStackTrace();
			out.println(e);
		}
	}

}
