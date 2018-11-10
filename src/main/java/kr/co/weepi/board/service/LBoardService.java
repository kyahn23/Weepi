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

}
