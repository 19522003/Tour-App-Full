package com.DAO;

import java.util.List;

import com.entity.Tour;

public interface TourDAO {
	public boolean addTour(Tour p);

	public List<Tour> getAllTour();

	public Tour getTourbyID(int id);

	public boolean editTour(Tour p);

	public boolean deleteTour(int id);

	public List<Tour> getAllHaNoiTour();

	public List<Tour> getAllHoChiMinhTour();

	public List<Tour> getTourBySearch(String ch);
}
