package kr.co.weepi.board.service;

import java.util.List;

import kr.co.weepi.repository.domain.ABoard;

public interface ABoardService {

	List<ABoard> list();

	void write(ABoard board);

	

}
