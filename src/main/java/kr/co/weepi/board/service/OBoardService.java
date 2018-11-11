package kr.co.weepi.board.service;

import java.util.List;


import kr.co.weepi.repository.domain.OBoard;

public interface OBoardService {
	
	/**
	 * List board
	 * @return
	 */
	List<OBoard> selectBoard();
	
	/**
	 * board Detail 
	 * @param no
	 * @return
	 */
	OBoard selectBoardByNo(int no);
	
	/**
	 * board Insert
	 * @param oBoard
	 */
	void insertBoard(OBoard oBoard);
	
	/**
	 * board Update
	 * @param oBoard
	 */
	void updateBoard(OBoard oBoard);
	
	/**
	 * board Update
	 * @param no
	 * @return
	 */
	OBoard updateForm(int no);
	
	/**
	 * board delete
	 * @param no
	 */
	void deleteBoard(int no);


}
