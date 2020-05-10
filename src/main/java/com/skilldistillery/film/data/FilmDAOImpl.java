package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public class FilmDAOImpl implements FilmDAO {

	private static String url = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=MST";
	private final String user = "root";
	private final String pass = "root";

	private final String fullDataQuery = "SELECT film.*, language.* FROM film JOIN language "
			+ "ON film.language_id = language.id ";

	public FilmDAOImpl() throws ClassNotFoundException {
	}

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Film findFilmById(int filmId) {
		Film film = null;
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			String sql = fullDataQuery + "WHERE film.id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				film = mapFilmDataToFilm(rs);
			} else {
				rs.close();
				stmt.close();
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return film;
	}

	@Override
	public Film createFilm(Film film) {
		Film film = null;
		String sql = "INSERT INTO film (title, description, release_year, rental_duration, rental_rate, length, "
				+ "replacement_cost, )WHERE film.id = ?";
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
		return film;
	}

	@Override
	public Film updateFilm(Film film) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFilm(Film film) {
		// TODO Auto-generated method stub

	}

	private Film mapFilmDataToFilm(ResultSet rs) throws SQLException {
		Film film = new Film(rs.getInt("film.id"), rs.getString("film.title"), rs.getString("film.description"),
				rs.getInt("film.release_year"), rs.getInt("film.language_id"), rs.getInt("film.rental_duration"),
				rs.getDouble("film.rental_rate"), rs.getInt("film.length"), rs.getDouble("film.replacement_cost"),
				rs.getString("film.rating"), rs.getString("film.special_features"));
		film.setActors(name(rs.getInt("film.id")));
		return film;
	}

	public List<Actor> name(int filmId) throws SQLException {
		List<Actor> names = new ArrayList<>();
		Actor actor;
		String firstName = null;
		String lastName = null;
		Connection conn = DriverManager.getConnection(url, user, pass);
		String sql = "SELECT actor.id, actor.first_name, actor.last_name FROM actor JOIN film_actor "
				+ "ON actor.id = film_actor.actor_id JOIN film ON film_actor.film_id = film.id WHERE film.id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, filmId);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			int id = rs.getInt("id");
			firstName = rs.getString("first_name");
			lastName = rs.getString("last_name");
			actor = new Actor(id, firstName, lastName);
			names.add(actor);
		}
		rs.close();
		stmt.close();
		return names;
	}
}
