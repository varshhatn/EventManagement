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
@WebServlet("/signup")
public class signup extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String mail=req.getParameter("mail");
		String phonenum=req.getParameter("phone");
		String password=req.getParameter("password");
		String confirm=req.getParameter("confirm");
		
		long phone=Long.parseLong(phonenum);
		

		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=new Customer();
		if(confirm.equals(password))
		{
			c.setName(name);
			c.setMail(mail);
			c.setPhone(phone);
			c.setPassword(password);
			boolean result=cdao.insertCustomer(c);
			if(result==true)
			{
				req.setAttribute("success", "Signup successfull");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
			}
		
			else
			{
				req.setAttribute("fail", "Signup Failed");
				RequestDispatcher rd= req.getRequestDispatcher("signup.jsp");
				rd.forward(req, resp);
			}
		
		
		}
		else
		{
			req.setAttribute("fail", "Re-Enter the correct Password ");
			RequestDispatcher rd= req.getRequestDispatcher("signup.jsp");
			rd.forward(req, resp);
		}
	
		
	}

}
