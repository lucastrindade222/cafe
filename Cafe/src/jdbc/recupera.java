package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet("/recuperasenha")
public class recupera extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet rs;
	 
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		
		String userneme="root";
		String pwd="";
		String ConnUr1 =  "jdbc:mysql://localhost:3306/cafe?useSSL=false&serverTimezone=UTC";
		 
		 
		
		try {
		
			
		
			String email = request.getParameter("email");
			String senha =null;
		
			
			
			 String sql = "SELECT * FROM   cadastro_pessoa where Email=?"; 
				
				
				Class.forName("com.mysql.jdbc.Driver");
				
		     	Connection	conexao = DriverManager.getConnection(ConnUr1, userneme, pwd);
		     	
		     	
		     	PreparedStatement ps = conexao.prepareStatement(sql);
		     	ps.setString(1,email);
		     	
		     	rs = ps.executeQuery();
		     	while (rs.next()) {
		     		senha =  rs.getString("Senha");
		     	}
		     	
		     	HttpSession session = request.getSession();
		       
		     	session.setAttribute("senha",senha);
		    	response.sendRedirect("senha.jsp");
		} catch (ClassNotFoundException e) {
			 
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	 
	}

}
