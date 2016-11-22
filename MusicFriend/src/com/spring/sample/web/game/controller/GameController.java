package com.spring.sample.web.game.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GameController {
	@RequestMapping(value="/game")//test가 들어오면 안에 메소드를 실행하겠다.
	public ModelAndView game(HttpServletRequest request,ModelAndView modelAndView){
		modelAndView.setViewName("game/game");
		return modelAndView;
	}
	
	@RequestMapping(value="/GameHome")//test가 들어오면 안에 메소드를 실행하겠다.
	public ModelAndView GameHome(HttpServletRequest request,ModelAndView modelAndView){
		modelAndView.setViewName("game/GameHome");
		return modelAndView;
	}
	
	@RequestMapping(value="/GameEnding")//test가 들어오면 안에 메소드를 실행하겠다.
	public ModelAndView GameEnding(HttpServletRequest request,ModelAndView modelAndView){
		modelAndView.setViewName("game/GameEnding");
		return modelAndView;
	}
}
