package com.simplilearn.teksystems;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet("/logout")
public class LogoutController extends HttpServlet {

	private static final long serialVersionUID = -2801351640498743186L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		         
		try {
			request.setAttribute("logout","Logged out Succesfully");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");   
			rd.include(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}

	}

}
