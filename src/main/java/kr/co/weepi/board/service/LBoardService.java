package kr.co.weepi.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.weepi.repository.domain.LBoard;


/**
 * 게시판 목록 조회에 대한 비즈니스 로직 처리
 * @author kay
 *
 */
@Service
public interface LBoardService {
	
	/**
	 * 게시판 목록 조회에 대한 비즈니스 로직 처리
	 * @return List<LBoard>
	 */
	List<LBoard> list();
	
	/**
	 * 게시판 상세 조회에 대한 비즈니스 로직 처리
	 * @param no
	 * @return LBoard
	 */
	LBoard detail(int no);
	
	/**
	 * 게시판 입력에 대한 비즈니스 로직 처리
	 * @param board
	 */
	void write(LBoard board);
	
	/**
	 * 글 수정에 대한 비즈니스 로직 처리
	 * @param board
	 */
	void edit(LBoard board);
}
