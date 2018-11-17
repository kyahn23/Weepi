package kr.co.weepi.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.weepi.repository.domain.LBoard;
import kr.co.weepi.repository.mapper.LBoardMapper;

@Service
public class LBoardServiceImpl implements LBoardService {
	
	@Autowired
	private LBoardMapper mapper;

	@Override
	public List<LBoard> list() {
		return mapper.selectBoard();
	}

	@Override
	public LBoard detail(int no) {
		return mapper.selectBoardByNo(no);
	}

	@Override
	public void write(LBoard board) {
		mapper.insertBoard(board);
	}

	@Override
	public void edit(LBoard board) {
		System.out.println("go to edit");
		mapper.updateBoard(board);
		System.out.println("edited");
	}

	@Override
	public void deleteOne(int no) {
		mapper.deleteBoardByNo(no);
	}
	
}
