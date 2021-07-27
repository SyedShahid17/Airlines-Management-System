package create_acc;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

@WebServlet("/create")
public class Create_accDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		
		create_acc c=new create_acc();
		c.setFname(request.getParameter("fname"));
		c.setLname(request.getParameter("lname"));
		c.setEmail(request.getParameter("email"));
		c.setMobileNumber(request.getParameter("mobilenum"));
		c.setPassword(request.getParameter("password"));
		c.setConfirmPassword(request.getParameter("repassword"));
		Configuration con=new Configuration().configure().addAnnotatedClass(create_acc.class);
    	ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
		
    	
    	SessionFactory sf=con.buildSessionFactory(reg);
    	Session session=sf.openSession();
		
		PrintWriter out=response.getWriter();
		try {
	    	session.beginTransaction();
	    	
	    	session.save(c);
	    	session.getTransaction().commit();
	    	
		}catch(Exception e) {
			out.println(e);
		} 
	}
}
