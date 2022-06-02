package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.TourDAOImpl;
import com.DB.DBConnect;
import com.entity.Tour;

@WebServlet("/edit_tour")
public class TourEdit extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String tourName = req.getParameter("name");
			String location = req.getParameter("location");
			String days = req.getParameter("days");
			String nights = req.getParameter("nights");
			String style = req.getParameter("style");
			String city = req.getParameter("city");
			String price = req.getParameter("price");
			Tour p = new Tour();
			p.setTourId(id);
			p.setTourName(tourName);
			p.setLocation(location);
			p.setDays(days);
			p.setNights(nights);
			p.setTravelStyle(style);
			p.setCity(city);
			p.setPrice(price);
			TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());
			boolean f = dao.editTour(p);
			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("succMsg", "Update Successfully!!!");
				resp.sendRedirect("admin/all_tour.jsp");
			} else {
				session.setAttribute("failedMsg", "Failed to update product!!!");
				resp.sendRedirect("admin/all_tour.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
