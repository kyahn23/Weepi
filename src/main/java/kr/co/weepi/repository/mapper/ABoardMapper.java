package kr.co.weepi.repository.mapper;

import java.util.List;

import kr.co.weepi.repository.domain.ABoard;
import kr.co.weepi.repository.domain.ABoardPage;

public interface ABoardMapper {

	List<ABoard> alist(ABoardPage ap);

	int listCount();

	void awrite(ABoard board);
	ABoard adetail(int no);
	void viewCnt(int no);
	void adelete(int no);
	void aupdate(ABoard board);
}
