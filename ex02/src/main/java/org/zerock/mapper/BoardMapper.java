package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.BoardVO;

public interface BoardMapper {
	//bno가 0보다 커야 검색을 한다. list형식으로 값을 가져온다.
	//어노테이션으로 간단한 sql문 작성가능하고 끝에 ;를 붙이진 않는다.
	//@Select("select * from tbl_board where bno > 0")
	public List<BoardVO> getList();
	
	public void insert(BoardVO board); //insert
	
	public void insertSelectKey(BoardVO board); //insert

	public BoardVO read(int bno); //select
	
	public int delete(int bno); //delete
	
	public int update(BoardVO board); //update
	
}//interface END
