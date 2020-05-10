package com.skilldistillery.film.controllers;
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
    @RequestMapping(path = "getFilmById.do", params = "filmId", method = RequestMethod.GET)
    public ModelAndView getFilmById(String filmId) {
        ModelAndView mv = new ModelAndView();
        Film film = filmDAO.findFilmById(Integer.parseInt(filmId));
        mv.addObject("film", film);
        mv.setViewName("WEB-INF/views/searchById.jsp");
        return mv;
    }
    
    @RequestMapping(path="createFilm.do", method = RequestMethod.POST)
    public ModelAndView createFilm(Film film, RedirectAttributes redir) {
    	Film checkFilm = filmDAO.createFilm(film);
    	ModelAndView mv = new ModelAndView();
    	redir.addFlashAttribute("film", checkFilm);
    	mv.setViewName("redirect:filmCreated.do");
    	return mv;
    }
    
    @RequestMapping(path="filmCreated.do", method = RequestMethod.GET)
    public ModelAndView created() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("WEB-INF/views/createFilm.jsp");
    	return mv;
    }
    
    @RequestMapping(path = "createAFilmPage.do")
    public ModelAndView createAFilmPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("WEB-INF/views/createFilm.jsp");
        return mv;
    }
}

