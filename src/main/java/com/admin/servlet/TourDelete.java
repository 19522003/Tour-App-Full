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

@WebServlet("/delete_tour")
public class TourDelete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			int id = Integer.parseInt(req.getParameter("id"));

			TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());
			HttpSession session = req.getSession();
			if (dao.deleteTour(id)) {
				session.setAttribute("succMsg", "Delete product successfully!!!");
				resp.sendRedirect("admin/all_tour.jsp");
			} else {
				session.setAttribute("failedMsg", "Something went wrong!!!");
				resp.sendRedirect("admin/all_tour.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
