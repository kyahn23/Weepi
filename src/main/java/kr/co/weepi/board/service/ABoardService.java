package kr.co.weepi.board.service;

import java.util.List;

import kr.co.weepi.repository.domain.ABoard;

public interface ABoardService {

	List<ABoard> list();

	ABoard detail(int no);

	void write(ABoard board);

	void update(ABoard board);

	void delete(int no);

}
