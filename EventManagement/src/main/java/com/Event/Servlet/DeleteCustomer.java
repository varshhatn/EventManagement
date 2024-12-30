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
@WebServlet("/delete")
public class DeleteCustomer extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		HttpSession session=req.getSession(false);
		Customer admin=(Customer)session.getAttribute("Customer");
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=cdao.getCustomer(id);
		
		if(admin.getId()!=id) {
			
			
			boolean res=cdao.deleteCustomer(c);
			if(res==true)
			{
				
					req.setAttribute("success", "Account Deleted Successfully..");
					RequestDispatcher rd=req.getRequestDispatcher("viewallcustomers.jsp");
					rd.forward(req, resp);
				}
				else {
					req.setAttribute("failure", "Failed to  Deleted Account..");
					RequestDispatcher rd=req.getRequestDispatcher("viewallcustomers.jsp");
					rd.forward(req, resp);
				}
			}
			else {
				req.setAttribute("failure", "Failed to  Deleted Account..");
				RequestDispatcher rd=req.getRequestDispatcher("viewallcustomers.jsp");
				rd.forward(req, resp);
			}
			
		}

}
