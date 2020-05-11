package com.skilldistillery.film.data;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;
@Repository
public class FilmDAOImpl implements FilmDAO {
	private static String url = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=MST";
	private final String user = "root";
	private final String pass = "root";
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
			String sql = "SELECT * FROM film WHERE film.id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				film = mapFilmDataToFilm(rs);
				film.setActors(name(filmId));
				film.setCategory(category(filmId));
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
		Film tempFilm = film;
		String sql = "INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, "
				+ "length, replacement_cost, rating, special_features) VALUES (?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
			conn.setAutoCommit(false);
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, 1);
			stmt.setInt(5, film.getRentalDuration());
			stmt.setDouble(6, film.getRentalRate());
			stmt.setInt(7, film.getLength());
			stmt.setDouble(8, film.getReplacementCost());
			stmt.setString(9, film.getRating());
			stmt.setString(10, film.getSpecialFeatures());
			int uc = stmt.executeUpdate();
			System.out.println(uc + " film records created");
			ResultSet keys = stmt.getGeneratedKeys();
			tempFilm.setLanguageId(1);
			while (keys.next()) {
				int filmId = keys.getInt(1);
				tempFilm.setId(keys.getInt(1));
				System.out.println("New film ID: " + filmId);
			}
			conn.commit();
		} catch (SQLException e) {
			System.err.println("Error during inserts");
			e.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					System.err.println("Error rolling back.");
					e1.printStackTrace();
				}
			}
			return null;
		}
		return tempFilm;
	}
	@Override
	public Film updateFilm(Film film) {
		Film filmToUpdate = film;
		String sql = "UPDATE film SET "
				+ "film.title = ?, "
				+ "film.description = ?, "
				+ "film.release_year = ?, "
				+ "film.language_id = ?, "
				+ "film.rental_duration = ?, "
				+ "film.rental_rate = ?, "
				+ "film.length = ?, "
				+ "film.replacement_cost = ?, "
				+ "film.rating = ?, "
				+ "film.special_features = ? "
				+ "WHERE film.id = ?";
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
			conn.setAutoCommit(false);
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, 1);
			stmt.setInt(5, film.getRentalDuration());
			stmt.setDouble(6, film.getRentalRate());
			stmt.setInt(7, film.getLength());
			stmt.setDouble(8, film.getReplacementCost());
			stmt.setString(9, film.getRating());
			stmt.setString(10, film.getSpecialFeatures());
			stmt.setInt(11, film.getId());
			int uc = stmt.executeUpdate();
			System.out.println(uc + " film records updated");
			conn.commit();
		} catch (SQLException e) {
			System.err.println("Error during update");
			e.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					System.err.println("Error rolling back.");
					e1.printStackTrace();
				}
			}
			return null;
		}
		return filmToUpdate;
	}
	@Override
	public Film deleteFilm(Film film) {
		Film filmToDelete = film;
		String sql = "DELETE FROM film WHERE id = ?";
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
			conn.setAutoCommit(false);
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, film.getId());
			int uc = stmt.executeUpdate();
			System.out.println(uc + " film records deleted");
			conn.commit();
		} catch (SQLException e) {
			System.err.println("Error during delete");
			e.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					System.err.println("Error rolling back.");
					e1.printStackTrace();
				}
			}
			return null;
		}
		return filmToDelete;
	}
	
	public List<Film> searchByKeyword(String keyword) {
		 List<Film> films = new ArrayList<>();
		 Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
			String sql = "SELECT film.* FROM film WHERE title like ? OR description like ?";;
			conn.setAutoCommit(false);
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	        stmt.setString(1, "%" + keyword + "%");
	        stmt.setString(2, "%" + keyword + "%");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				
			Film film = mapFilmDataToFilm(rs);
			films.add(film);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return films;
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
	public String category(int filmId) throws SQLException {
		String cat = null;
		Connection conn = DriverManager.getConnection(url, user, pass);
		String sql = "SELECT name FROM category JOIN film_category ON category.id = film_category.category_id "
				+ "JOIN film ON film_category.film_id = film.id WHERE film.id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, filmId);
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			cat = rs.getString("category.name");
		}
		rs.close();
		stmt.close();
		return cat;
	}
}