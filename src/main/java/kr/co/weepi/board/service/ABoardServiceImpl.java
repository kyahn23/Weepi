package kr.co.weepi.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.weepi.repository.domain.ABoard;
import kr.co.weepi.repository.mapper.ABoardMapper;

@Service
public class ABoardServiceImpl implements ABoardService {

	@Autowired
	private ABoardMapper mapper;

	@Override
	public List<ABoard> list() {
		return mapper.alist();
	}

	@Override
	public void write(ABoard board) {
		mapper.awrite(board);

	}

	@Override
	public ABoard detail(int no) {
		mapper.viewCnt(no);
		return mapper.adetail(no);
	}

	@Override
	public void delete(int no) {
		mapper.adelete(no);

	}

	@Override
	public void update(ABoard board) {
		mapper.aupdate(board);

	}

}
