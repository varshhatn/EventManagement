package com.Event.DAO;

import java.util.List;

import com.Event.DTO.Events;

public interface EventsDAO {
	public boolean addEvents(Events e);
	public boolean deleteEvents(Events p);
	public Events getEventst(int id);
	public List getEvents();
	public int getAllEventCount(int categoryId);
	List<Events> getEventsAndCategorys();
}
