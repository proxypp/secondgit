package co.micol.lost.laf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.lost.laf.service.LafMapper;
import co.micol.lost.laf.service.LafService;
import co.micol.lost.laf.service.LafVO;
import co.micol.lost.pagination.Pagination;

@Repository("lafDao")
public class LafServiceImpl implements LafService {
	@Autowired
	private LafMapper map;
	@Override
	public List<LafVO> noticeSelectList(Pagination page) {
		// TODO Auto-generated method stub
		return map.noticeSelectList(page);
	}

	@Override
	public LafVO noticeSelect(LafVO vo) {
		// TODO Auto-generated method stub
		return map.noticeSelect(vo);
	}

	@Override
	public int noticeInsert(LafVO vo) {
		// TODO Auto-generated method stub
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeUpdate(LafVO vo) {
		// TODO Auto-generated method stub
		return map.noticeUpdate(vo);
	}

	@Override
	public int noticeDelete(LafVO vo) {
		// TODO Auto-generated method stub
		return map.noticeDelete(vo);
	}

	@Override
	public List<LafVO> noticeSearchList(String searchKey) {
		// TODO Auto-generated method stub
		return map.noticeSearchList(searchKey);
	}

	@Override
	public int noticeCount() {
		// TODO Auto-generated method stub
		return map.noticeCount();
	}

}
