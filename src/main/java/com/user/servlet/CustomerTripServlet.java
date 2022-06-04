package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CustomerTripDAOImpl;
import com.DB.DBConnect;
import com.entity.CustomerTrip;

@WebServlet("/plan-trip")
public class CustomerTripServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String firstName = req.getParameter("fname");
			String lastName = req.getParameter("lname");
			String city = req.getParameter("city");
			String country = req.getParameter("country");
			String phone = req.getParameter("phone");
			String destination = req.getParameter("destination");
			String month = req.getParameter("month");
			String days = req.getParameter("days");
			String numberPeople = req.getParameter("numberpeople");
			String money = req.getParameter("money");
			String email = req.getParameter("email");
			
			CustomerTrip us = new CustomerTrip();
			us.setFirstName(firstName);
			us.setLastName(lastName);
			us.setEmail(email);
			us.setCity(city);
			us.setCountry(country);
			us.setPhone(phone);
			us.setDestination(destination);
			us.setMonth(month);
			us.setDays(days);
			us.setPeople(numberPeople);
			us.setMoney(money);

			HttpSession session = req.getSession();
			CustomerTripDAOImpl dao = new CustomerTripDAOImpl(DBConnect.getConnection());
			boolean f2 = dao.submitRequest(us);
			if (f2) {
				session.setAttribute("succMsg", "Submit successfully...");
				resp.sendRedirect("plantrip.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong!!!");
				resp.sendRedirect("plantrip.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
