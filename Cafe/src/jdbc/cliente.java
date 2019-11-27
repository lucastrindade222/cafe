package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.api.ha.StickyFeature;

/**
 * Servlet implementation class cliente
 */
@WebServlet("/cliente")
public class cliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
 
	 
		
		
		
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String userneme="root";
		String pwd="";
		String ConnUr1 =  "jdbc:mysql://localhost:3306/cafe?useSSL=false&serverTimezone=UTC";
		 
		try {
			
			String id = request.getParameter("cpf");
			
			String no = request.getParameter("nome");
			String email = request.getParameter("email");
			String Senha = request.getParameter("senha");
			String cpf = request.getParameter("cpf");
			String Telefone = request.getParameter("telefone");
			String Estado = request.getParameter("estado");
			String cep = request.getParameter("cpe");
			String cidade = request.getParameter("cidade");
			String rua = request.getParameter("rua");
			String bairro = request.getParameter("bairro");
			String numero = request.getParameter("numero");
			  
			if(id != null) {
			String sql = "UPDATE cadastro_pessoa SET Nome=?,Email=?,Senha=? where CPF=?"; // esta sql vai alterar se o cpf for igual
			String sql1 = "UPDATE  cadastro_endereco SET Telefone=?,Estado=?,CEP=?,Cidade=?,Rua=?,Bairro=?,Numero=? where CPF_pessoa=?"; 
			
			Class.forName("com.mysql.jdbc.Driver");
			
	     	Connection	conexao = DriverManager.getConnection(ConnUr1, userneme, pwd);
		
	     	PreparedStatement ps = conexao.prepareStatement(sql);
	     	
	     	ps.setString(1,no);
	     	ps.setString(2,email);
	     	ps.setString(3,Senha);
	     	ps.setString(4,cpf);
	    	 
	     	 
	     	
	     	ps.executeUpdate();
	     	
	     	
	     	
	     	PreparedStatement pse = conexao.prepareStatement(sql1);
	     	
	    pse.setString(1,Telefone);
	    pse.setString(2,Estado);
	    pse.setString(3,cep);
	    pse.setString(4,cidade);
	    pse.setString(5,rua);
	    pse.setString(6,bairro);
	    pse.setString(7, numero);
	    pse.setString(8,id);
	    
	    pse.executeUpdate();
	     	
	     	response.sendRedirect("sair.jsp"); // aqui ele vai fechar a sessao para poder colocar os novos dados na nova sessao. agora va para sair.jsp 
			}else {
				
				
				response.sendRedirect("dados.jsp");
			}
		} catch (ClassNotFoundException e) {
			 System.out.println("erro"+e);
		 
		} catch (SQLException e) {
		 
			 System.out.println("erro"+e);
		}
		
	}




}
