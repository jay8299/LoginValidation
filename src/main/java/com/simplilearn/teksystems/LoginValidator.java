package com.simplilearn.teksystems;

import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet("/loginuser")
public class LoginValidator extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String userName = "vijay";
	private final String password = "123456";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String pass = request.getParameter("psw");
		
		if(uname.equals(userName)&& pass.equals(password)) {
			request.setAttribute("name","Vijay Kumar");
			RequestDispatcher rd=request.getRequestDispatcher("logout.jsp");            
			rd.include(request, response);
		}
		else {
			request.setAttribute("error","Invalid Username or Password");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");            
			rd.include(request, response);
		}
		
		
	}

}
