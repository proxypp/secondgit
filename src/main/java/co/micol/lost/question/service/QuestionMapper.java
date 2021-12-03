package co.micol.lost.question.service;

import java.util.List;

public interface QuestionMapper {
	List<QuestionVO> QuestionSelectList();
	QuestionVO QuestionSelect(QuestionVO vo);
	int QuestionInsert(QuestionVO vo);
	int QuestionUpdate(QuestionVO vo);
	int QuestionDelete(QuestionVO vo);

}
