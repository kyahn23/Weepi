package kr.co.weepi.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.weepi.board.service.LBoardService;

@Controller
@RequestMapping("/board/LBoard")
public class LBoardController {
	
	@Autowired
	private LBoardService service;
	
	@RequestMapping("/list.do")
	public void list(Model model) {
		model.addAttribute("list", service.list());
	}
	
}

