package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.UserDao;
import model.User;

public class UserContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserContoller() {
		super();	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("register")) {
			
			User u = new User();
			u.setFname(request.getParameter("fname"));
			u.setLname(request.getParameter("lname"));
			u.setEmail(request.getParameter("email"));
			u.setContact(Long.parseLong(request.getParameter("mobile")));
			u.setPassword(request.getParameter("password"));
			u.setGender(request.getParameter("gender"));
			u.setProfile_pic(request.getParameter("profile_pic"));
			System.out.println(u);
			
			ApplicationContext con = new ClassPathXmlApplicationContext("config.xml");
			UserDao dao = (UserDao) con.getBean("dao");
			dao.addUser(u);
			response.sendRedirect("login.jsp");
		}
		
		else if(action.equalsIgnoreCase("login")) {
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			ApplicationContext con = new ClassPathXmlApplicationContext("config.xml");
			UserDao dao = (UserDao) con.getBean("dao");
			
			
			User u = dao.findUserByEmail(email, password);
			
			if(u != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", u);
				response.sendRedirect("home.jsp");
			}
			else {
				response.sendRedirect("login.jsp?error=Invalid credentials");
			}
		}
	}

}
