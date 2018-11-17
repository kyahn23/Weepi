package kr.co.weepi.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.weepi.board.service.LBoardService;
import kr.co.weepi.repository.domain.LBoard;

@Controller
@RequestMapping("/board/LBoard")
public class LBoardController {
	
	public LBoardController() {
		super();
		System.out.println("controller");
	}
	
	@Autowired
	private LBoardService service;
	
	@RequestMapping("/list.do")
	public void list(Model model) {
		model.addAttribute("list", service.list());
	}
	
	@RequestMapping("/detail.do")
	public void detail(int no, Model model) {
		model.addAttribute("board", service.detail(no));
	}
	
	@RequestMapping("/write.do")
	public String write(LBoard board) {
		service.write(board);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "detail.do?no=" + board.getNo();
	}
	
	@RequestMapping("/updateForm.do")
	public void updateForm(int no, Model model) {
		model.addAttribute("board", service.detail(no));
	}
	
	@RequestMapping("/update.do")
	public String update(LBoard board) {
		service.edit(board);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "detail.do?no=" + board.getNo();
	}
}

