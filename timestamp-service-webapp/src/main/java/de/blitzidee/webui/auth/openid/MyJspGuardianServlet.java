package de.blitzidee.webui.auth.openid;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyJspGuardianServlet 
extends HttpServlet
{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String path = req.getRequestURI();
		
		String cp = req.getContextPath();
		
		path = path.substring(cp.length(), path.lastIndexOf('.'))+".jsp";
		
		getServletContext().
			getRequestDispatcher(path).
				forward(req, resp);
		
	}
}
