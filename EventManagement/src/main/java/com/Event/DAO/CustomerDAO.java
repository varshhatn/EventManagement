package com.Event.DAO;

import java.util.List;

import com.Event.DTO.Customer;

public interface CustomerDAO {
	public boolean insertCustomer(Customer c);
	public Customer getCustomer(String mail, String password);
	public List getCustomer();
	public boolean updateCustomer(Customer c);
	public boolean deleteCustomer(Customer c);
	public Customer getCustomer(int id);

}
