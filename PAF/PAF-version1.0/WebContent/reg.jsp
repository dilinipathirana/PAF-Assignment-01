<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>4C Knowledge</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%

		String fullname="",dob="",permanent_addr,curr_addr,mobile,phn,uname,pswd,confirm_pswd;
		String interests[];
		StringBuilder pa=new StringBuilder();
		
		Connection conn;
		try {

			//if(fullname.equals("") || dob.equals("") || permanent_addr.equals("") || curr_addr.equals("") || mobile.equals("") || phn.equals("") || uname.equals("") || paswd.equals("")){
								
			//}
			
			fullname = request.getParameter("fullname");
			dob = request.getParameter("DateOfBirth");
			permanent_addr = request.getParameter("Permenant Address");
			curr_addr= request.getParameter("Current Address");
			mobile = request.getParameter("Mobile Number");
			phn = request.getParameter("Home Telephone Number");
			interests=request.getParameterValues("publications");//request.getParameters();
			uname=request.getParameter("username");
			pswd=request.getParameter("password");
			confirm_pswd=request.getParameter("Confirm Password");
			
			//String encodepass=Base64.getEncoder().encodeToString(pswd.getBytes());
					
			
			
			
			for(String publica:interests)
			{
				if(pa.length()>0)
				{	
					pa.append(",");
				}
		     pa.append(publica);
				
			}
			String pac=pa.toString();
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Login","root","");
			String sql ="INSERT INTO `Customer`(`Full_Name`, `DOB`, `PAddress`, `CAddress`, `Mobile`, `HomePhone`, `Interests`, `Username`, `Password`) VALUES (?,?,?,?,?,?,?,?,?)";
			//out.println(fullname+"\n"+dob+"\n"+permanent_addr+"\n"+curr_addr+"\n"+mobile+"\n"+phn+"\n"+uname+"\n"+encodepass+"\n"+pac+"\n");
			
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, fullname);
			ps.setString(2,dob);
			ps.setString(3,permanent_addr);
			ps.setString(4,curr_addr);
			ps.setString(5,mobile );
			ps.setString(6,phn);
			ps.setString(7,pac);
			ps.setString(8,uname);
			ps.setString(9,pswd);
	
			ps.execute();
			
			out.println("<script type =\"text/javascript\">");
			out.println("alert('Registration Successful !');");
			out.println("location='Login.jsp';");
			out.println("</script>");
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
 %>
</body>
</html>