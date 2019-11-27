package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet rs;
	private ResultSet rs1;
     
    public login() {
        super();
      
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	 
		
		
	 
		String userneme="root";// aqui e a mesma coisa do cadastro
		String pwd="";
		String ConnUr1 =  "jdbc:mysql://localhost:3306/cafe?useSSL=false&serverTimezone=UTC";
		 
		 
		
		try {
		
			
			

			 
			 
			String email = request.getParameter("email");//variavel informada pelo usario 
			String senha = request.getParameter("senha");
			String dbse = null;// este aqui vai receber o que tiver no banco 
			String dbemail = null;
			String cpf = null;
	        String nome = null;
	        String Telefone = null;
	        String Estado = null;
	        String CEP = null;
	        String Cidade = null;
	        String Rua =null;
	        String Bairro = null;
	        String Numero = null;
	        
			
			
		 
			
			 String sql = "SELECT * FROM   cadastro_pessoa where Email=? and Senha=?"; 
			
			
			Class.forName("com.mysql.jdbc.Driver");
			
	     	Connection	conexao = DriverManager.getConnection(ConnUr1, userneme, pwd);
		
	     	PreparedStatement ps = conexao.prepareStatement(sql);
	     	ps.setString(1,email);
	     	ps.setString(2,senha);
	     	rs = ps.executeQuery();//este rs e uma variavel do tipo ResultSet que vai retornar o resutado do banco 
	     	while (rs.next()) {
	     		dbemail = rs.getString("Email");//  a variavel vai receber o get do banco  
				 dbse = rs.getString("Senha");
			     cpf = rs.getString("CPF");
			     nome = rs.getString("Nome");
			}
	     	
	     	
	     	
	     	 
	     	
	     	
	     	
	     	
	     	if(email.equals(dbemail) && senha.equals(dbse)) {// aqui ele vai comparar se e igual o valor informado na linha 56  
	     		HttpSession session = request.getSession();//criando session
	     		
	     		String sql1 = "SELECT * FROM cadastro_endereco where CPF_pessoa=?"; // aqui e um  sql para mostrar tudo que o usario tem   
	     		PreparedStatement ps1 = conexao.prepareStatement(sql1);
		     	ps1.setString(1,cpf);
		     	rs1 = ps1.executeQuery();
		     	while (rs1.next()) {// mesma coisa da linha 85
		     		 Telefone = rs1.getString("Telefone");
		 	         Estado =rs1.getString("Estado"); 
		 	         CEP = rs1.getString("CEP"); 
		 	         Cidade =rs1.getString("Cidade"); 
		 	         Rua =rs1.getString("Rua"); 
		 	         Bairro = rs1.getString("Bairro"); 
		 	         Numero = rs1.getString("Numero"); 
		 	        
				}
	     		
		     	session.setAttribute("email",email);// a session e uma variavel que esta na linha 100. ele vai set a variavel. session.setAttribute("nome que vai ser  a variavel ",nome da variavel que vai ser setada ); 
		     	session.setAttribute("senha", senha);
		     	session.setAttribute("cpf", cpf);
		     	session.setAttribute("nome", nome);
		     	session.setAttribute("telefone", Telefone);
		     	session.setAttribute("estado", Estado);
		     	session.setAttribute("cep",CEP);
		     	session.setAttribute("cidade",Cidade);
		     	session.setAttribute("rua",Rua);
		     	session.setAttribute("bairro",Bairro);
		     	session.setAttribute("numero", Numero);
		     	
		     	
		     	
	     		
	     		request.setAttribute("aa",nome);
	    		request.getRequestDispatcher("index.jsp").forward(request, response);//redirecionar para index.jsp
	     		 
	     	}else {
	    		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	    		
	    		
	    		
	     		rd.include(request, response);
	     	}
	     	
	     	
		} catch (ClassNotFoundException e) {
			 
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
