package kr.co.weepi.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.weepi.board.service.ABoardService;
import kr.co.weepi.repository.domain.ABoard;

@Controller
@RequestMapping("/board/ABoard")
public class ABoardController {

	@Autowired
	private ABoardService service;

	@RequestMapping("/list.do")
	public void list(Model model) throws Exception {
		model.addAttribute("list", service.list());
	}
	
	@RequestMapping("/writeForm.do")
    public void writeForm() {}
	
	@RequestMapping("/write.do")
	public String write(ABoard board) {
		service.write(board);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "detail.do?no=" + board.getNo();
	}
	
	
	
	
	
	
}
