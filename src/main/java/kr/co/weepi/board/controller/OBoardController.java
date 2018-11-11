package kr.co.weepi.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.weepi.board.service.OBoardService;
import kr.co.weepi.repository.domain.OBoard;

@Controller
@RequestMapping("/board/OBoard")
public class OBoardController {
	
	@Autowired
	OBoardService service;
	
	@RequestMapping("/list.do")
	public void list(Model model)throws Exception{
			model.addAttribute("Olist", service.selectBoard());
	};
	
	@RequestMapping("/detail.do")
	public void detail(int no , Model model) throws Exception{
		model.addAttribute("board",service.selectBoardByNo(no));
	}
	//글작성 
	@RequestMapping("/weiteForm.do")
	public void writeForm() throws Exception{}
	@RequestMapping("/write.do")
	public String write(OBoard oBoard) throws Exception{
		service.insertBoard(oBoard);
		return "redirect:detail.do?no="+oBoard.getNo();
	}
	//글수정
	@RequestMapping("/update.do")
	public String update(OBoard oBoard)throws Exception{
		service.updateBoard(oBoard);
		return "redirect:detail.do?no="+oBoard.getNo();
	}
	@RequestMapping("/updateForm.do")
	public void updateForm(int no, Model model) throws Exception{
		model.addAttribute("board", service.selectBoardByNo(no));
	
	}
	
	//글삭제
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception{
		service.deleteBoard(no);
		return "redirect:list.do";
	}
	
}

