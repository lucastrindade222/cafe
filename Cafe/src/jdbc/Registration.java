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


@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String userneme="root";           //  isso e o nome do usuario do banco 
		String pwd="";  //   a senha do banco 
		String ConnUr1 =  "jdbc:mysql://localhost:3306/cafe?useSSL=false&serverTimezone=UTC";//isso e o indereço do banco .estas variaves vão ser utilizadas na conexao
		 
		try { // isso e um    tratamento de exceções, serve para tratar erros . caso não tenha erro vai rodar tudo dentro do try
			
			String no = request.getParameter("nome"); // o request pega as coisa da pagina Cadastro. vc coloca uma variavel e colocar request.getParameter(e o nome do name que voce colocou). duvidas voltar no Cadastro.jsp e reler a linha 35       
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
			
			
			String sql = "INSERT INTO  cadastro_pessoa(Nome,Email,Senha,CPF) VALUES(?,?,?,?); "; // isso e uma variavel que guarda um comando sql que sera executado na linha 55
			String sql1 = "INSERT INTO   cadastro_endereco(Telefone,Estado,CEP,Cidade,Rua,Bairro,Numero,CPF_pessoa) VALUES(?,?,?,?,?,?,?,?);"; 
			
			Class.forName("com.mysql.jdbc.Driver");// isso e o draive que foi importado da biblioteca que esta em  Libraries/Web App Libraries mysql-connectar-java-8.0.18(2).jar. local para baixar a biblioteca https://mvnrepository.com/artifact/mysql/mysql-connector-java
			
	     	Connection	conexao = DriverManager.getConnection(ConnUr1, userneme, pwd); // aqui ele vai criar uma variavel do tipo Connection com o nome conexao.  
		
	     	PreparedStatement ps = conexao.prepareStatement(sql);// aqui ele vai preparar  a conexao. vai criar uma variavel do tipo PreparedStatement com ps.
	     	
	     	ps.setString(1,no);//ps vai alterar no sql os ? por a variavel coletada na linha 35 .ps.setString(posicao do ? que vc que altera ,variavel que vai subistituir o ?);
	     	ps.setString(2,email);
	     	ps.setString(3,Senha);
	     	ps.setString(4,cpf);
	        
	     	 
	     	
	     	ps.executeUpdate();// aqui ele vai executar o sql ja alterado 
	     	
	     	
	     	
	     	PreparedStatement pse = conexao.prepareStatement(sql1); // aqui e o mesma coisa da linha 55
	     	
	    pse.setString(1,Telefone);
	    pse.setString(2,Estado);
	    pse.setString(3,cep);
	    pse.setString(4,cidade);
	    pse.setString(5,rua);
	    pse.setString(6,bairro);
	    pse.setString(7, numero);
	    pse.setString(8, cpf);
	
	    
	    pse.executeUpdate();
	     	
	     	response.sendRedirect("login.jsp");// aqui ele vai redirecionar para login.jsp
			
		} catch (ClassNotFoundException e) {// aqui e para erro no java
			 System.out.println("erro"+e);
		 
		} catch (SQLException e) {// aqui e pra casso de erro no sql. agora vc vai para o arquivo web.xml . ele esta ma pasta web-inf/lib. feche todas as coisa que não forem necesarias no seu pc. este arquivo trava o seu pc .depois que vc sair do arquivo web.xml vc vai para login.jsp . 
		
			 System.out.println("erro"+e);
		}
		
	}

}
