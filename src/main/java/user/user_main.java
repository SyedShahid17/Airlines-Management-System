package user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.*;

@WebServlet("/main")
public class user_main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		user user=new user();
		String a =user.setUsername(request.getParameter("user"));
		String b=user.setPassword(request.getParameter("password"));
		HttpSession session=request.getSession();
		
		
		PrintWriter out=response.getWriter();
		out.println("Welcome to Airlines "+a);
	}

}
