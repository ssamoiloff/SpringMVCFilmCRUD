package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public Film findFilmById(int filmId);
	public Film createFilm(Film film);
	public Film updateFilm(Film film);
	public Film deleteFilm(Film film);
	
	List<Film> searchByKeyword(String keyword);
}
