package com.skilldistillery.film.data;

import com.skilldistillery.film.entities.Actor;

public interface ActorDAO {
	public Actor createActor(Actor actor);
	public Actor updateActor(Actor actor);
	public void deleteActor(Actor actor);
}
