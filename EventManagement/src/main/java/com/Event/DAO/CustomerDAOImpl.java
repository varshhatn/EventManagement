package com.Event.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Event.Connection.Connector;
import com.Event.DTO.Customer;

public class CustomerDAOImpl implements CustomerDAO{

	private Connection con=null;
	Customer c=null;
	public CustomerDAOImpl() {
		this.con=Connector.requestConnection();
	}
	
	@Override
	public boolean insertCustomer(Customer c) {
		String query="INSERT INTO CUSTOMER(NAME, MAIL, PHONE, PASSWORD) VALUES(?,?,?,?)";
		PreparedStatement ps=null;
		int res=0;
		
		try {
			con.setAutoCommit(false);
			
			ps=con.prepareStatement(query);
			ps.setString(1,c.getName());
			ps.setString(2,c.getMail());
			ps.setLong(3, c.getPhone());
			ps.setString(4,c.getPassword());
			res=ps.executeUpdate();
		} catch (SQLException e) {
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
		else {
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
	public Customer getCustomer(String mail, String password) {
		String query="SELECT * FROM CUSTOMER WHERE MAIL=? AND PASSWORD=?";
		PreparedStatement ps=null;
		Customer c=null;
		ResultSet rs=null;
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, mail);
			ps.setString(2, password);
			rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Customer();
				c.setId(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setMail(rs.getString(3));
				c.setPhone(rs.getLong(4));
				c.setPassword(rs.getString(5));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return c;
	}

	@Override
	public List getCustomer() {
		PreparedStatement ps=null; 
		ArrayList<Customer> customers=new ArrayList<Customer>(); 
		  ResultSet rs=null; 
		  Customer c=null; 
		  String query="SELECT * FROM CUSTOMER"; 
		  try { 
		   ps=con.prepareStatement(query); 
		   rs=ps.executeQuery(); 
		   while(rs.next()) 
		    {
			   c=new Customer(); 
			    c.setId(rs.getInt(1)); 
			    c.setName(rs.getString(2)); 
			    c.setMail(rs.getString(3)); 
			    c.setPhone(rs.getLong(4));
			    c.setPassword(rs.getString(5)); 
			    customers.add(c); 
		    }
		  } catch (SQLException e) { 
			   // TODO Auto-generated catch block 
			   e.printStackTrace(); 
		  } 
		  return customers; 
	}

	@Override
	public boolean updateCustomer(Customer c) {
		PreparedStatement ps=null;
		int res=0;
		String query="UPDATE CUSTOMER SET NAME=?,MAIL=?, PHONE=?, PASSWORD=? WHERE ID=?";
		try {
			con.setAutoCommit(false); 
			ps=con.prepareStatement(query); 
			ps.setString(1, c.getName()); 
			ps.setString(2, c.getMail());
			ps.setLong(3, c.getPhone()); 
			ps.setString(4, c.getPassword()); 
			ps.setLong(5, c.getId()); 
			res=ps.executeUpdate(); 
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		if(res>0)
		{
			try {
				con.commit();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			return true;
		}
		else
		{
			try {
				con.rollback();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			return false;
		}
		
		
	}

	@Override
	public boolean deleteCustomer(Customer c) {
		PreparedStatement ps=null;
		int res=0;
		String query="DELETE FROM CUSTOMER WHERE ID=?";
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setLong(1, c.getId());
			res=ps.executeUpdate();
		} catch (SQLException e) {
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
		}
		return false;
		
	}
	@Override
	public Customer getCustomer(int id) {
		String query="SELECT * FROM CUSTOMER WHERE ID=?";
		PreparedStatement ps=null;
		ResultSet rs=null;
		Customer c=null;
		
		try {
			ps=con.prepareStatement(query);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Customer();
				c.setId(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setMail(rs.getString(3));
				c.setPhone(rs.getLong(4));
				c.setPassword(rs.getString(5));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return c;
	}
	

}
