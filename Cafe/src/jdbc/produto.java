package jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet("/produto")
public class produto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	float t = 0;
	float total = 0;
	private String fim;
	private String custofima;
	private String custofimb;
	private String custofimc;
	private String custofimd;
	private String custofimt;
   
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 
		 
		total=0;
		float preco;
		
		boolean a=false;
		boolean b=false;
		boolean c=false;
		boolean d=false;
		
		int quanA=0;
		int quanB=0;
		int quanC=0;
		int quanD=0;
	 
		
		String compra = request.getParameter("sim");
		
		String a1= request.getParameter("a1");// vai pegar se foi selecionado  
		String a2= request.getParameter("a2");
		String a3= request.getParameter("a3");
		String a4= request.getParameter("a4");
		
		String b1= request.getParameter("b1");
		String b2= request.getParameter("b2");
		String b3= request.getParameter("b3");
		String b4= request.getParameter("b4");
	
		String c1= request.getParameter("c1");
		String c2= request.getParameter("c2");
		String c3= request.getParameter("c3");
		String c4= request.getParameter("c4");
		
		String d1= request.getParameter("d1");
		String d2= request.getParameter("d2");
		String d3= request.getParameter("d3");
		String d4= request.getParameter("d4");
		
			 
	   if(a1 != null) {// vai testar se foi selecionado 
			preco=50.00f;// vai colocar um preco 
			total=1*(total+preco);
			a=true;// se foi comprado 
			quanA=quanA+1;// quantidade unitaria comprado 
	   }
	   if(a2 != null) {
			preco=50.00f;
			total=2*(total+preco);
			a=true;
			quanA=quanA+2;
	   }
	   if(a3 != null) {
			preco=50.00f;
			total=3*(total+preco);
			a=true;
			quanA=quanA+3;
	   }
	   if(a4 != null) {
			preco=50.00f;
			total=4*(total+preco);
			a=true;
			quanA=quanA+4;
	   }
	   
	   
	   
	   if(b1 != null) {
				preco=100.00f;
				total=1*(total+preco);
				b=true;
				quanB=quanB+1;
		   }
		   if(b2 != null) {
				preco=100.00f;
				total=2*(total+preco);
				b=true;
				quanB=quanB+2;
		   }
		   if(b3 != null) {
				preco=100.00f;
				total=3*(total+preco);
				b=true;
				quanB=quanB+3;
		   }
		   if(b4 != null) {
				preco=100.00f;
				total=4*(total+preco);
				b=true;
				quanB=quanB+4;
		   }
		   
		   
	   
		   if(c1 != null) {
				preco=200.00f;
				total=1*(total+preco);
				c=true;
				quanC=quanC+1;
		   }
		   if(c2 != null) {
				preco=200.00f;
				total=2*(total+preco);
				c=true;
				quanC=quanC+2;
		   }
		   if(c3 != null) {
				preco=200.00f;
				total=3*(total+preco);
				c=true;
				quanC=quanC+3;
		   }
		   if(c4 != null) {
				preco=200.00f;
				total=4*(total+preco);
				c=true;
				quanC=quanC+4;
		   }	
		   
		   
		   
		   if(d1 != null) {
				preco=500.00f;
				total=1*(total+preco);
				d=true;
				quanD=quanD+1;
		   }
		   if(d2 != null) {
				preco=500.00f;
				total=2*(total+preco);
				d=true;
				quanD=quanD+2;
		   }
		   if(d3 != null) {
				preco=500.00f;
				total=3*(total+preco);
				d=true;
				quanD=quanD+3;
		   }
		   if(d4 != null) {
				preco=500.00f;
				total=4*(total+preco);
				d=true;
				quanD=quanD+4;
		   }
	   
            
		   
		   if(compra != null) {
			   // se o button for apertado ele va gerar um valor diferente de null. variavel pegada na linha 48
			   
               t=0;
			   t=total;
			   
			 
			   custofima ="||Foi comprado Java-East Indian?:"+a+" &nbsp;|Quantidade:"+quanA; // aqui vai ser um resuno que vai ser mandado para o banco de dados
			   custofimb ="||Foi comprado Mocha?:"+b+"&nbsp;|Quantidade:"+quanB;
			   custofimc= "||Foi comprado Santos?:"+c+"&nbsp;|Quantidade:"+quanC;
			   custofimd= "||Foi comprado Maracaibo?:"+d+" &nbsp;|Quantidade:"+quanD;
			   custofimt= "\nTotal:R$"+t;
			   
			   HttpSession session = request.getSession();
			  
			   session.setAttribute("custofimA", custofima);// vai colocar em uma sessao que vai ser utilizado no conpra.java
			   session.setAttribute("custofimB", custofimb);
			   session.setAttribute("custofimC", custofimc);
			   session.setAttribute("custofimD", custofimd);
			   session.setAttribute("custofimT", custofimt);
			   
			  
			   
			   response.sendRedirect("carri.jsp");
			   
		   }else {//se nao for comprado vai ser o botao somar que foi ativado 
	   
	        request.setAttribute("total",total);// ele vai retornar o total da compra 
    		request.getRequestDispatcher("produto.jsp").forward(request, response);// va para carri.jsp
	       
		   }
 

		
	}

}
