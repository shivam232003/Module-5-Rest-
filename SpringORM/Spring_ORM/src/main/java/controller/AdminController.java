package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.AdminDao;
import dao.UserDao;
import model.Admin;
import model.User;


public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("login")) {
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			ApplicationContext con = new ClassPathXmlApplicationContext("config.xml");
			AdminDao dao = (AdminDao) con.getBean("dao");
			
			Admin a = dao.findAdminByEmail(email, password);
			
			if(a != null) {
				HttpSession session = request.getSession();
				session.setAttribute("admin", a);
				response.sendRedirect("admin-home.jsp");
			}
			else {
				response.sendRedirect("admin-login.jsp?error=Invalid credentials");
			}
			
		}
	}

}
