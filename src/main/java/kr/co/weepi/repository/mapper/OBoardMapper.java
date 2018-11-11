package kr.co.weepi.repository.mapper;

import java.util.List;

import kr.co.weepi.repository.domain.OBoard;

public interface OBoardMapper {
	List<OBoard> selectBoard();
	OBoard selectBoardByNo(int no);
	void insertBoard(OBoard oBoard);
	void updateBoard(OBoard oBoard);
	void deleteBoard(int no);
}
