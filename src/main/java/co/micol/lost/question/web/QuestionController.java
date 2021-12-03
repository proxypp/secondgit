package co.micol.lost.question.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.lost.question.service.QuestionService;
import co.micol.lost.question.service.QuestionVO;

@Controller
public class QuestionController {
	@Autowired
	QuestionService questionDao;
	
	@RequestMapping("/question.do")
	public String questionListss(Model model) {
		model.addAttribute("ques", questionDao.QuestionSelectList());
		return "question/questionList";
	}
	@RequestMapping("/questionInsertForm.do")
	public String questionInsertForm(){
		return "question/insertForm";
	}
	@RequestMapping("/questiongJoin.do")
	public String questiongJoin(HttpServletRequest request,@Param("ques") String ques) {
		
		HttpSession session = request.getSession();
		session.setAttribute("ques", ques);
		QuestionVO vo = new QuestionVO();
		vo.setId((String)session.getAttribute("id"));
		vo.setName((String)session.getAttribute("name"));
		vo.setQues(ques);
		vo.setAnswor("");
		if (vo.getQues() != null && vo.getQues() != "") {
			questionDao.QuestionInsert(vo);
		}
		return "main/mains";	
	}
	@RequestMapping("/questionUpdateForm.do")
	public String questionUpdateForm() {
		
		return "question/questionUpdateForm";
	}
	@RequestMapping("/questionUpdate.do")
	public String questionUpdate(@Param("id") String id,@Param("answor") String answor, HttpServletRequest request) {
		HttpSession session = request.getSession();
		QuestionVO vo = new QuestionVO();
		vo.setId(id);
		//vo.setName((String)session.getAttribute("name"));
		//vo.setQues((String)session.getAttribute("ques"));
		vo.setAnswor(answor);
		questionDao.QuestionUpdate(vo);
		
		return "main/mains";
	}
	
}
