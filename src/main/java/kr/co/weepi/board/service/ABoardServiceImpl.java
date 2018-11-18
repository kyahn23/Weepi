package kr.co.weepi.board.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.weepi.repository.domain.ABoard;
import kr.co.weepi.repository.domain.ABoardPage;
import kr.co.weepi.repository.mapper.ABoardMapper;

@Service
public class ABoardServiceImpl implements ABoardService {

	@Autowired
	private ABoardMapper mapper;

	@Override
	public Map<String, Object> list(ABoardPage ap) {
		Map<String, Object> map = new HashMap<>();
		map.put("list", mapper.alist(ap));
		return map;
	}
	
	@Override
	public int listCount() {
		return mapper.listCount();
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
