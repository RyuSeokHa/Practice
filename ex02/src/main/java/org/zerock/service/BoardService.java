package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardService {

	public void register(BoardVO board);
	
	public BoardVO get(int bno); //게시물 번호인 파라미터 값을 가지고 조회함.
	
	public boolean modify(BoardVO board);
	
	public boolean remove(int bno);
	
	public List<BoardVO> getList(); //현재 테이블에 저장된 모든 데이터를 가져옴.
}
