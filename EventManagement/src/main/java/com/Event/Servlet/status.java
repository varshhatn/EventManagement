
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
@WebServlet("/select")
public class status extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String location=req.getParameter("location");
		String date=req.getParameter("date");
		
		req.setAttribute("name", name);
        req.setAttribute("location", location);
        req.setAttribute("date", date);
		RequestDispatcher rd=req.getRequestDispatcher("status.jsp");
		rd.forward(req, resp);
	}

}
