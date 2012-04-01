package de.blitzidee.webui.auth.openid;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.xml.ws.ResponseWrapper;

public class MyJspGuardianServlet 
extends HttpServlet
{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String path = req.getRequestURI();
		
		String cp = req.getContextPath();
		
		path = path.substring(cp.length(), path.lastIndexOf('.'))+".jsp";
		
		MyResponseWrapper respWrapper =
				new MyResponseWrapper(resp);
		
		respWrapper.addHeader("Pragma", "no-cache");
		respWrapper.addHeader("Cache-Control", "no-cache");
		respWrapper.addHeader("Cache-Control","no-store" );
		respWrapper.addDateHeader("Expires", 0);
		
		getServletContext().
			getRequestDispatcher(path).
				forward(req, respWrapper);

		System.out.println(respWrapper.getActionMap());
	
	
	}


	private static class MyResponseWrapper 
		extends HttpServletResponseWrapper 
	{

		Map<String,Object> actionMap = new HashMap<String, Object>(); 
		
		
		
		private MyResponseWrapper(HttpServletResponse response) {  
			super(response);
		}

		@Override
		public void addCookie(Cookie cookie) { logMethodEntry(); 
			// TODO Auto-generated method stub
			actionMap.put("cookie: "+cookie.getName(),cookie);
			super.addCookie(cookie);
		}

		@Override
		public void addDateHeader(String name, long date) { logMethodEntry(); 
			// TODO Auto-generated method stub
			actionMap.put("dateHeader: "+name,date);
			super.addDateHeader(name, date);
		}

		@Override
		public void addHeader(String name, String value) { logMethodEntry(); 
			// TODO Auto-generated method stub
			actionMap.put("header: "+name,value);
			super.addHeader(name, value);
		}

		@Override
		public void addIntHeader(String name, int value) { logMethodEntry(); 
			// TODO Auto-generated method stub
			actionMap.put("intHeader: "+name,value);
			super.addIntHeader(name, value);
		}

		@Override
		public boolean containsHeader(String name) { logMethodEntry(); 
			
			return super.containsHeader(name);
		}

		@Override
		public String encodeRedirectURL(String url) { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.encodeRedirectURL(url);
		}

		@Override
		public String encodeRedirectUrl(String url) { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.encodeRedirectUrl(url);
		}

		@Override
		public String encodeURL(String url) { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.encodeURL(url);
		}

		@Override
		public String encodeUrl(String url) { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.encodeUrl(url);
		}

		@Override
		public void sendError(int sc, String msg) throws IOException {
			actionMap.put("error: "+sc,msg);
			super.sendError(sc, msg);
		}

		@Override
		public void sendError(int sc) throws IOException {
			// TODO Auto-generated method stub
			actionMap.put("error: "+sc,"");
			super.sendError(sc);
		}

		@Override
		public void sendRedirect(String location) throws IOException {
			// TODO Auto-generated method stub
			actionMap.put("redirect",location);
			super.sendRedirect(location);
		}

		@Override
		public void setDateHeader(String name, long date) { logMethodEntry(); 
			// TODO Auto-generated method stub
			actionMap.put("dateHeader: "+name,date);
			super.setDateHeader(name, date);
		}

		@Override
		public void setHeader(String name, String value) { logMethodEntry(); 
			actionMap.put("header: "+name,value);
			super.setHeader(name, value);
		}

		@Override
		public void setIntHeader(String name, int value) { logMethodEntry(); 
			actionMap.put("intHeader: "+name,value);
			super.setIntHeader(name, value);
		}

		@Override
		public void setStatus(int sc, String sm) { logMethodEntry(); 
			actionMap.put("status: "+sc,sm);
			super.setStatus(sc, sm);
		}

		@Override
		public void setStatus(int sc) { logMethodEntry(); 
			actionMap.put("status: "+sc,sc);
			super.setStatus(sc);
		}

		@Override
		public void flushBuffer() throws IOException {
			
			super.flushBuffer();
		}

		@Override
		public int getBufferSize() { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.getBufferSize();
		}

		@Override
		public String getCharacterEncoding() { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.getCharacterEncoding();
		}

		@Override
		public String getContentType() { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.getContentType();
		}

		@Override
		public Locale getLocale() { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.getLocale();
		}

		@Override
		public ServletOutputStream getOutputStream() throws IOException {
			// TODO Auto-generated method stub
			return super.getOutputStream();
		}

		@Override
		public ServletResponse getResponse() { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.getResponse();
		}

		@Override
		public PrintWriter getWriter() throws IOException {
			// TODO Auto-generated method stub
			return super.getWriter();
		}

		@Override
		public boolean isCommitted() { logMethodEntry(); 
			// TODO Auto-generated method stub
			return super.isCommitted();
		}

		@Override
		public void reset() { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.reset();
		}

		@Override
		public void resetBuffer() { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.resetBuffer();
		}

		@Override
		public void setBufferSize(int size) { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.setBufferSize(size);
		}

		@Override
		public void setCharacterEncoding(String charset) { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.setCharacterEncoding(charset);
		}

		@Override
		public void setContentLength(int len) { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.setContentLength(len);
		}

		@Override
		public void setContentType(String type) { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.setContentType(type);
		}

		@Override
		public void setLocale(Locale loc) { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.setLocale(loc);
		}

		@Override
		public void setResponse(ServletResponse response) { logMethodEntry(); 
			// TODO Auto-generated method stub
			super.setResponse(response);
		}
		
		private void logMethodEntry() 
		{
			String methodName = 
					new Exception().getStackTrace()[1].getMethodName();
			
			System.out.println("Log method entry: "+methodName);
		}

		public Map<String, Object> getActionMap() {
			return actionMap;
		}
	}

}
