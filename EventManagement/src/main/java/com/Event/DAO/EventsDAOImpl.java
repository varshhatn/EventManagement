package com.Event.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Event.Connection.Connector;
import com.Event.DTO.Customer;
import com.Event.DTO.Events;

public class EventsDAOImpl implements EventsDAO {

	private Connection con=null;
	Customer c=null;
	
	private void CustomerDAOImpl() {
		this.con=Connector.requestConnection();
	}
	
	@Override
	public boolean addEvents(Events e1) {
		PreparedStatement ps=null;
		int res=0;

		String query="INSERT INTO EVENTS(NAME,DESCRIPTION,LOCATION,DATE,IMAGE,CATEGORY_ID) VALUES(?,?,?,?,?,?)";
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1, e1.getEvent_name());
			ps.setString(2, e1.getDescription());
			ps.setString(3, e1.getLocation());
			ps.setString(4, e1.getDate());
			ps.setString(5, e1.getImage());
			ps.setInt(6, e1.getCategory_id());
			
			res=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(res>0)
		{
			try {
				con.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return true;
		}
		else
		{
			try {
				con.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return false;
		}
	}

	@Override
	public boolean deleteEvents(Events e1) {
		PreparedStatement ps=null;
		int res=0;
		String query="DELETE FROM EVENTS WHERE ID=?";
		try 
		{
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setInt(1, e1.getEvent_id());
			res=ps.executeUpdate();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(res>0)
		{
			try {
				con.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return true;
		}
		else
		{
			try {
				con.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}
	}

	@Override
	public Events getEventst(int id) {
		PreparedStatement ps=null;
		Events e1=null;
		ResultSet rs=null;
		String query="SELECT * FROM EVENTS WHERE ID=?";
		try {
			ps=con.prepareStatement(query);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next())
			{
				e1=new Events();
				e1.setEvent_id(rs.getInt(1));
				e1.setEvent_name(rs.getString(2));
				e1.setDescription(rs.getString(3));
				e1.setLocation(rs.getString(4));
				e1.setDate(rs.getString(5));
				e1.setImage(rs.getString(6));
				e1.setCategory_id(rs.getInt(7));
			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return e1;
	}
	

	@Override
	public List getEvents() {
		ArrayList<Events>events=new ArrayList<Events>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Events e1=null;
		String query="SELECT * FROM EVENTS ORDER BY ID DESC";
		try 
		{
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				e1=new Events();
				e1.setEvent_id(rs.getInt(1));
				e1.setEvent_name(rs.getString(2));
				e1.setDescription(rs.getString(3));
				e1.setLocation(rs.getString(4));
				e1.setDate(rs.getString(5));
				e1.setImage(rs.getString(6));
				e1.setCategory_id(rs.getInt(7));
				events.add(e1);
			}
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return events;
	}
	
	@Override
	public int getAllEventCount(int categoryId) {
		ResultSet rs=null;
		Events p=null;
		String query=null;
		if(categoryId !=-1)
		{
			query = "select COUNT(*) from events where category_ID = ? ";
		}else {
			query = "select COUNT(*) from events  ";
		}
		try 
		{
			PreparedStatement ps=con.prepareStatement(query);
			
			if(categoryId!=-1)
			{
				ps.setInt(1, categoryId);
			}
			rs=ps.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
			}
			
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public List<Events> getEventsAndCategorys() {
		ArrayList<Events> events = new ArrayList<Events>();
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    Events e1 = null;
	    // Modify the query to join PRODUCT table with product_category table
	    String query = "SELECT e.ID, e.NAME, e.DISCRIPTION, e.LOCATION,e.DATE,e.IMAGE, e.CATEGORY_ ID,c.name AS category_name FROM events e JOIN event_category c ON e.CATEGORY_ ID = c.CATEGORY_ ID";;
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            e1 = new Events();
	            e1.setEvent_id(rs.getInt(1));
				e1.setEvent_name(rs.getString(2));
				e1.setDescription(rs.getString(3));
				e1.setLocation(rs.getString(4));
				e1.setDate(rs.getString(5));
				e1.setImage(rs.getString(6));
				e1.setCategory_id(rs.getInt(7));
				events.add(e1);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return events;
}
	
}
