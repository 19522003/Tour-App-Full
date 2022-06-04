package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.CustomerTrip;
import com.entity.Tour;

public class CustomerTripDAOImpl implements CustomerTripDAO{
private Connection conn;
	
	public CustomerTripDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean submitRequest(CustomerTrip c) {
		try {
			String sql = "INSERT INTO customer_trip(firstname,lastname,city,country,phone,destination,month,days,people,money,email) "
					+ " values (?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getFirstName());
			ps.setString(2, c.getLastName());
			ps.setString(3, c.getCity());
			ps.setString(4, c.getCountry());
			ps.setString(5, c.getPhone());
			ps.setString(6, c.getDestination());
			ps.setString(7, c.getMonth());
			ps.setString(8, c.getDays());
			ps.setString(9, c.getPeople());
			ps.setString(10, c.getMoney());
			ps.setString(11, c.getEmail());
			if (ps.executeUpdate() == 1)
			{
				return true;
			} else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<CustomerTrip> getAllCustomerTrip() {
		List<CustomerTrip> list = new ArrayList<CustomerTrip>();
		CustomerTrip ct = null;
		try {
			String sql = "Select * from customer_trip";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				ct = new CustomerTrip();
				ct.setRequestId(rs.getInt(1));
				ct.setFirstName(rs.getString(2));
				ct.setLastName(rs.getString(3));
				ct.setCity(rs.getString(4));
				ct.setCountry(rs.getString(5));
				ct.setPhone(rs.getString(6));
				ct.setDestination(rs.getString(7));
				ct.setMonth(rs.getString(8));
				ct.setDays(rs.getString(9));
				ct.setPeople(rs.getString(10));
				ct.setMoney(rs.getString(11));
				ct.setEmail(rs.getString(12));
				list.add(ct);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
