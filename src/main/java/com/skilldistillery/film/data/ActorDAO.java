package com.skilldistillery.film.data;

import com.skilldistillery.film.entities.Actor;

public interface ActorDAO {
	public Actor createFilm(Actor film);
	public Actor updateFilm(Actor film);
	public void deleteFilm(Actor film);
}
