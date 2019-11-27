 <%@page import="java.sql.Connection"%>
 <%@page import= "java.io.IOException"%>
<%@page import ="java.sql.Connection"%>
<%@page import= "java.sql.DriverManager"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.SQLException"%>
<%@page import= "javax.servlet.http.HttpSession"%>
<%@page import= "java.sql.ResultSet" %>

<%
    ResultSet rs;
    String userneme="root";
	String pwd="";
	String ConnUr1 =  "jdbc:mysql://localhost:3306/cafe?useSSL=false&serverTimezone=UTC";
	 
	
		
		String codigo=  request.getParameter("codigo");
		
		String sql = "delete from compras where Numero =?;"; 
		 
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection	conexao = DriverManager.getConnection(ConnUr1, userneme, pwd);
		
  	PreparedStatement ps = conexao.prepareStatement(sql);
  	
   ps.setString(1,codigo);
   
   ps.executeUpdate();
  	
   response.sendRedirect("historico.jsp");
 
 %>