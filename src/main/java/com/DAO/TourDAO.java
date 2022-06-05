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

	public List<Tour> getAllDaLatTour();

	public List<Tour> getAllNhaTrangTour();

	public List<Tour> getAllAdventureTour();

	public List<Tour> getAllRelaxingTour();

	public List<Tour> getAllRomanceTour();

	public List<Tour> getAllFamilyTour();

	public List<Tour> getAllHoneyMoonTour();

	public List<Tour> getTourBySearch(String ch);
}
