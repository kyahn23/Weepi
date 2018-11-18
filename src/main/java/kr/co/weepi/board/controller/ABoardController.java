package kr.co.weepi.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.weepi.board.service.ABoardService;
import kr.co.weepi.repository.domain.ABoard;
import kr.co.weepi.repository.domain.ABoardPage;
import kr.co.weepi.util.PageResult;

@Controller
@RequestMapping("/board/ABoard")
public class ABoardController {

	@Autowired
	private ABoardService service;

	@RequestMapping("/list.do")
	public void list(@RequestParam(value="pageNo" ,defaultValue="1")int pageNo,Model model) throws Exception {
		ABoardPage ap = new ABoardPage();
		ap.setPageNo(pageNo);
		PageResult pageResult = new PageResult(pageNo, service.listCount(),10,10);
		
		model.addAttribute("list", service.list(ap));
		model.addAttribute("listCount", service.listCount());
		model.addAttribute("pageResult", pageResult);
		
	}
	
	@RequestMapping("/writeForm.do")
    public void writeForm() {}
	
	@RequestMapping("/write.do")
	public String write(ABoard board) {
		service.write(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "detail.do?no=" + board.getNo();
	}
	
	
    @RequestMapping("/detail.do")
	public void detail(int no, Model model) {
		model.addAttribute("board", service.detail(no));
	}
    
    @RequestMapping("/delete.do")
	public String delete(int no) throws Exception {
		service.delete(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}
    
    @RequestMapping("/updateForm.do")
    public void updateForm(Model model, int no) {
        model.addAttribute("board", service.detail(no));
    }
    
    @RequestMapping("/update.do")
    public String update(ABoard board) {
        service.update(board);
        return UrlBasedViewResolver.REDIRECT_URL_PREFIX+"detail.do?no=" + board.getNo();
    }
	
	
	
	
	
}
