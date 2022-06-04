package com.DAO;

import java.util.List;

import com.entity.CustomerTrip;
import com.entity.Tour;

public interface CustomerTripDAO {
	public boolean submitRequest(CustomerTrip c);
	
	public List<CustomerTrip> getAllCustomerTrip();
}
