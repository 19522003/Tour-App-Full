package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import com.DAO.TourDAOImpl;
import com.DB.DBConnect;
import com.entity.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/tour_add")
@MultipartConfig
public class TourAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String tourName = req.getParameter("name");
			String location = req.getParameter("location");
			String days = req.getParameter("days");
			String nights = req.getParameter("nights");
			String style = req.getParameter("style");
			String city = req.getParameter("city");
			String price = req.getParameter("price");
			Part part = req.getPart("photo");
			String fileName = part.getSubmittedFileName();
			Tour p = new Tour(tourName, location, days, nights, style, city, price, fileName);

			TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());

			boolean f = dao.addTour(p);
			HttpSession session = req.getSession();
			if (f) {
				String path = getServletContext().getRealPath("") + "img";
				File file = new File(path);
				part.write(path + File.separator + fileName);
				session.setAttribute("succMsg", "Tour has been added successfully!!!");
				resp.sendRedirect("admin/add_tour.jsp");
			} else {
				session.setAttribute("failedMsg", "Failed to add product!!!");
				resp.sendRedirect("admin/add_tour.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
