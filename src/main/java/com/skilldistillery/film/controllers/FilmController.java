package com.skilldistillery.film.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.skilldistillery.film.entities.*;
import com.skilldistillery.film.data.*;
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
//  @RequestMapping(path = "GetStateData.do", params = "abbr", method = RequestMethod.GET)
//  public ModelAndView getStateByAbbreviation(String abbr) {
//      ModelAndView mv = new ModelAndView();
//      State s = stateDAO.getStateByAbbreviation(abbr);
//      mv.addObject("state", s);
//      mv.setViewName("result");
//      return mv;
//  }
//
//  @RequestMapping(path = "NewState.do", method = RequestMethod.POST)
//  public ModelAndView newState(State state) {
//      stateDAO.addState(state);
//      ModelAndView mv = new ModelAndView();
//      mv.setViewName("result");
//      return mv;
//  }
    // TODO : Implement another request handler for:
    // path "NewState.do"
    // method POST
    // command object : State
    // return : ModelAndView
    // view : "redirect:stateAdded.do"
    // behavior : add state to dao, add state to flashAttributes
    // Note: Comment out the other "NewState.do" request handler method
//  @RequestMapping(path = "NewState.do", method = RequestMethod.POST)
//  public String newState(State state, RedirectAttributes redir) {
//      stateDAO.addState(state);
//      redir.addFlashAttribute("state", state);
//      return "redirect:stateAdded.do";
//  }
    // TODO : Implement a request handler for:
    // path "stateAdded.do"
    // method GET
    // command object : State
    // return : ModelAndView
    // view : "WEB-INF/result.jsp", "WEB-INF/result", or "result" if using
    // InternalResourceViewResolver
    // Note: fix other request handler methods to use InternalResourceViewResolver
//  @RequestMapping("stateAdded.do")
//  public ModelAndView stateAdded() {
//      ModelAndView mv = new ModelAndView();
//      // This uses InternalResourceViewResolver with WEB-INF and .jsp as the prefix
//      // and suffix
//      mv.setViewName("result");
//      return mv;
//  }
}

