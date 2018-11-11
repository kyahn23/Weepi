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

	

}
