package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor //모든 파라미터를 이용하는 생성자를 만드는 어노테이션
public class BoardServiceImpl implements BoardService{

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {
		
		log.info("register...." + board);
		
		mapper.insertSelectKey(board);
		
	}

	@Override
	public BoardVO get(int bno) {
		
		log.info("get........." + bno);
		
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		
		log.info("modify......." + board);
		
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(int bno) {

		log.info("remove........." + bno);
		
		return mapper.delete(bno) == 1;
	}

	@Override
	public List<BoardVO> getList() {
		
		log.info("getList..........");
		
		return mapper.getList();
	}

}
