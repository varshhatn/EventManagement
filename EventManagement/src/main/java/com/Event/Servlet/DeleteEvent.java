package com.Event.Servlet;
import java.io.IOException;

import com.Event.DAO.EventsDAO;
import com.Event.DAO.EventsDAOImpl;
import com.Event.DTO.EventCategory;
import com.Event.DTO.Events;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteEvent")
public class DeleteEvent extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		EventsDAO edao=new EventsDAOImpl();
		Events e1=new Events();
		if(e1.getEvent_id()==id)
		{
			boolean res=edao.deleteEvents(e1);
			if(res)
			{
				req.setAttribute("success", "Event deleted successfully..");
				RequestDispatcher rd=req.getRequestDispatcher("deleteEvent.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("failure", "failed to deleted Event..");
				RequestDispatcher rd=req.getRequestDispatcher("deleteEvent.jsp");
				rd.forward(req, resp);
			}
			
		}
		else {
			req.setAttribute("failure", "Invalid Event id..");
			RequestDispatcher rd=req.getRequestDispatcher("deleteEvent.jsp");
			rd.forward(req, resp);
		}
	}
}