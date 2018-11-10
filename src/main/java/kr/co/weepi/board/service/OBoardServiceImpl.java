package kr.co.weepi.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.weepi.repository.domain.OBoard;
import kr.co.weepi.repository.mapper.OBoardMapper;

@Service
public class OBoardServiceImpl implements OBoardService {
	@Autowired
	private OBoardMapper mapper;
	@Override
	public List<OBoard> selectBoard() {
		
		return mapper.selectBoard();
	}

	

}
