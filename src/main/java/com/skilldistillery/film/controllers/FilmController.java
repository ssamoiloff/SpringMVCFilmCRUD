package com.skilldistillery.film.controllers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;
@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO filmDAO;
	public void setFilmDAO(FilmDAO filmDAO) {
		this.filmDAO = filmDAO;
	}
	@RequestMapping(path = "home.do")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/home.jsp");
		return mv;
	}
	@RequestMapping(path = "searchById.do")
	public ModelAndView searchById() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/searchById.jsp");
		return mv;
	}
	@RequestMapping(path = "searchByKeywordPage.do")
	public ModelAndView searchByKeywordPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/searchByKeyword.jsp");
		return mv;
	}
	@RequestMapping(path = "getFilmById.do", params = "filmId", method = RequestMethod.GET)
	public ModelAndView getFilmById(String filmId) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDAO.findFilmById(Integer.parseInt(filmId));
		boolean filmNull = false;
		mv.addObject("film", film);
		if (film == null) {
			filmNull = true;
			mv.addObject("filmNull", filmNull);
		}
		mv.setViewName("WEB-INF/views/searchById.jsp");
		return mv;
	}
	@RequestMapping(path = "searchByKeyword.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView searchFilmByKeyword(String keyword, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDAO.searchByKeyword(keyword);
		redir.addFlashAttribute("film", films);
		mv.setViewName("redirect:returnedFilms.do");
		return mv;
	}
	@RequestMapping(path = "returnedFilms.do", method = RequestMethod.GET)
	public ModelAndView returnedFilms() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/returnedFilms.jsp");
		return mv;
	}
	@RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(Film film, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		Film checkFilm = filmDAO.createFilm(film);
		redir.addFlashAttribute("film", checkFilm);
		mv.setViewName("redirect:filmCreated.do");
		return mv;
	}
	@RequestMapping(path = "filmCreated.do", method = RequestMethod.GET)
	public ModelAndView created() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/filmCreated.jsp");
		return mv;
	}
	@RequestMapping(path = "createAFilmPage.do", method = RequestMethod.GET)
	public ModelAndView createAFilmPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/createFilm.jsp");
		return mv;
	}
	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.POST)
	public ModelAndView deleteFilm(Film film, RedirectAttributes redir) {
		Film localFilm = filmDAO.deleteFilm(film);
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("deletedFilm", localFilm);
		mv.setViewName("redirect:filmDeleted.do");
		return mv;
	}
	@RequestMapping(path = "filmDeleted.do", method = RequestMethod.GET)
	public ModelAndView deleted() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/filmDeleted.jsp");
		return mv;
	}
	@RequestMapping(path = "updateFilm.do", method = RequestMethod.POST)
	public ModelAndView updateFilm(Film film, RedirectAttributes redir) {
		Film localFilm = filmDAO.updateFilm(film);
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("updatedFilm", localFilm);
		mv.setViewName("redirect:filmUpdated.do");
		return mv;
	}
	@RequestMapping(path = "filmUpdated.do", method = RequestMethod.GET)
	public ModelAndView Updated() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/filmUpdated.jsp");
		return mv;
	}
}