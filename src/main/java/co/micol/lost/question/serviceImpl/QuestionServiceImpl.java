package co.micol.lost.question.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import co.micol.lost.question.service.QuestionMapper;
import co.micol.lost.question.service.QuestionService;
import co.micol.lost.question.service.QuestionVO;

@Primary
@Repository("QuestionDao")
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionMapper map;
	
	@Override
	public List<QuestionVO> QuestionSelectList() {
		// TODO Auto-generated method stub
		return map.QuestionSelectList();
	}

	@Override
	public QuestionVO QuestionSelect(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.QuestionSelect(vo);
	}

	@Override
	public int QuestionInsert(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.QuestionInsert(vo);
	}

	@Override
	public int QuestionUpdate(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.QuestionUpdate(vo);
	}

	@Override
	public int QuestionDelete(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.QuestionDelete(vo);
	}
	
}
