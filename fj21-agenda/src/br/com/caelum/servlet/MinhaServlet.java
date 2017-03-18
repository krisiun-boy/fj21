package br.com.caelum.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/testaServlet")
public class MinhaServlet extends HttpServlet{
	
	public void init(ServletConfig config) throws ServletException{
		
		super.init(config);
		System.out.println("INIT");
		
	}
	
	public void destroy(){
		super.destroy();
		System.out.println("DESTROY");
		
	}
	
	

}
