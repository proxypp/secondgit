package co.micol.lost.laf.service;

import java.util.List;

import co.micol.lost.pagination.Pagination;



public interface LafService {
	List<LafVO> noticeSelectList(Pagination page);
	LafVO noticeSelect(LafVO vo);
	int noticeInsert(LafVO vo);
	int noticeUpdate(LafVO vo);
	int noticeDelete(LafVO vo);
	List<LafVO> noticeSearchList(String searchKey);  //내용 검색을 위한 것.
	int noticeCount();
}
