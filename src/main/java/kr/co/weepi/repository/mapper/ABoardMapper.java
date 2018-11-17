package kr.co.weepi.repository.mapper;

import java.util.List;

import kr.co.weepi.repository.domain.ABoard;

public interface ABoardMapper {

	List<ABoard> alist();

	void awrite(ABoard board);

	ABoard adetail(int no);

	void viewCnt(int no);

	void adelete(int no);

	void aupdate(ABoard board);

}
