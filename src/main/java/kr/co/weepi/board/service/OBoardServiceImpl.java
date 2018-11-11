package kr.co.weepi.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.weepi.repository.domain.OBoard;
import kr.co.weepi.repository.mapper.OBoardMapper;

@Service
public class OBoardServiceImpl implements OBoardService {
	@Autowired
	private OBoardMapper mapper;
	@Override
	public List<OBoard> selectBoard() {
		
		return mapper.selectBoard();
	}
	@Override
	public OBoard selectBoardByNo(int no) {
		
		return mapper.selectBoardByNo(no);
	}
	@Override
	public void insertBoard(OBoard oBoard) {
		mapper.insertBoard(oBoard);
		
	}
	@Override
	public void updateBoard(OBoard oBoard) {
		mapper.updateBoard(oBoard);
		
	}
	@Override
	public OBoard updateForm(int no) {
		
		return mapper.selectBoardByNo(no);
	}
	@Override
	public void deleteBoard(int no) {
		mapper.deleteBoard(no);
		
	}

	

}
