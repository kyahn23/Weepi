package kr.co.weepi.board.service;

import java.util.List;

import kr.co.weepi.repository.domain.OBoard;

public interface OBoardService {
	
	/**
	 * List board
	 * @return
	 */
	List<OBoard> selectBoard();
	

}
