package kr.co.weepi.repository.mapper;

import java.util.List;

import kr.co.weepi.repository.domain.LBoard;

public interface LBoardMapper {
	List<LBoard> selectBoard();
	LBoard selectBoardByNo(int no);
	void insertBoard(LBoard board);
	void updateBoard(LBoard board);
	void deleteBoardByNo(int no);
	void updateViewCount(int no);
}
