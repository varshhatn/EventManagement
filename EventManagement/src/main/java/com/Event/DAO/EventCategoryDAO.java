package com.Event.DAO;

import java.util.List;

import com.Event.DTO.EventCategory;
import com.Event.DTO.Events;

public interface EventCategoryDAO {
	
	public  List getEventCategory();
	 public EventCategory getById(int id);
	 public List getEventCategoryById(int categoryId);
	public boolean AddCategory(EventCategory p);
	public boolean deleteCategory(String name);
	
}
