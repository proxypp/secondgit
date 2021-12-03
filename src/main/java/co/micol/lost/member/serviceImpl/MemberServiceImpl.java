package co.micol.lost.member.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.lost.member.service.MemberMapper;
import co.micol.lost.member.service.MemberService;
import co.micol.lost.member.service.MemberVO;

@Repository("memberDao")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper map;

	@Override
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberDelete(vo);
	}

	@Override
	public boolean isCheckId(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.isCheckId(vo);
	}

}
