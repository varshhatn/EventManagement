package com.Event.Servlet;

import java.io.IOException;

import com.Event.DAO.CustomerDAO;
import com.Event.DAO.CustomerDAOImpl;
import com.Event.DTO.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail=req.getParameter("mail");
		String password=req.getParameter("password");
		
		HttpSession session =req.getSession();
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c= cdao.getCustomer(mail, password);
		
		if(c!=null )
		{
			if(c.getId()==1) {
				session.setAttribute("Customer", c);
				RequestDispatcher rd=req.getRequestDispatcher("admindashboard.jsp");
				rd.forward(req, resp);
			}
			
			session.setAttribute("Customer", c);
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, resp);
		}
		else
		{
			
			req.setAttribute("fail", "Login failed");
			RequestDispatcher rd= req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
		
		
		
		
	}

}
