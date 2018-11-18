package kr.co.weepi.board.service;

import java.util.Map;

import kr.co.weepi.repository.domain.ABoard;
import kr.co.weepi.repository.domain.ABoardPage;

public interface ABoardService {

	Map<String, Object> list(ABoardPage ap);

	// paging관련 및 전체 게시글수
	int listCount();
	ABoard detail(int no);
	void write(ABoard board);
	void update(ABoard board);
	void delete(int no);

}
