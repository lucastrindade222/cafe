package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/conpra")
public class conpra extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String userneme="root";
		String pwd="";
		String ConnUr1 =  "jdbc:mysql://localhost:3306/cafe?useSSL=false&serverTimezone=UTC";
		 
		try {
			Random gerador = new Random();
			String cpf = request.getParameter("cpf");
		    String numero = ""+gerador;// este vai ser a chave primaria. o codigo da compra  
		    
		    HttpSession session = request.getSession();
		    String no = (String)  session.getAttribute("custofimT");
			String a = (String)  session.getAttribute("custofimA");
			String b = (String)  session.getAttribute("custofimB");
			String c = (String)  session.getAttribute("custofimC");
			String d = (String)  session.getAttribute("custofimD");
		    
		    
		    String resuno=a+b+c+d;
		    
		    
			String sql = "INSERT INTO  compras(Nome,CPF_usario,Numero,Resuno) VALUES(?,?,?,?); "; // ele vai colocar  tudo que foi comprado nesta sql 
			 
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection	conexao = DriverManager.getConnection(ConnUr1, userneme, pwd);
			
	     	PreparedStatement ps = conexao.prepareStatement(sql);
	     	
	     	ps.setString(1,no);
	     	ps.setString(2,cpf);
	     	ps.setString(3,numero);
	     	ps.setString(4,resuno);
	     	
	     	ps.executeUpdate();//a agora va para historico.jsp
	     	
	   response.sendRedirect("index.jsp");
			
		} catch (ClassNotFoundException e) {
			 System.out.println("erro"+e);
		 
		} catch (SQLException e) {
		 
			 System.out.println("erro"+e);
		}
		
	}

}
