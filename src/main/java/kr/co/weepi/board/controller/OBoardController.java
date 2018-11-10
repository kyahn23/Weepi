package kr.co.weepi.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.weepi.board.service.OBoardService;

@Controller
@RequestMapping("/board/OBoard")
public class OBoardController {
	
	@Autowired
	OBoardService service;
	
	@RequestMapping("/list.do")
	public Model list(Model model)throws Exception{
			model.addAttribute("Olist", service.selectBoard());
		return model;
	};
	
		
	
}

