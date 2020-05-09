package com.skilldistillery.film.data;

import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public Film createFilm(Film film);
	public Film updateFilm(Film film);
	public void deleteFilm(Film film);
}
