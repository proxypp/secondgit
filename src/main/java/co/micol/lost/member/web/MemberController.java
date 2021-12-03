package co.micol.lost.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.micol.lost.member.service.MemberService;
import co.micol.lost.member.service.MemberVO;



@Controller
public class MemberController {
	@Autowired
	MemberService memberDao;
	
	@RequestMapping("/memberList.do")
	public String memberList(Model model) {
		model.addAttribute("member", memberDao.memberSelectList());
		return "member/memberList";
	}
	@GetMapping("/memberLoginForm.do")
	public String memberLoginForm(Model model) {
		return "member/memberLoginForm";
	}
	
	@PostMapping("/memberLogin.do") 
	public String memberLogin(Model model, @Param("id") String id, @Param("password") String password,HttpServletRequest request ) {
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		vo.setId(id);
		vo.setPassword(password);
		vo = memberDao.memberSelect(vo);
		String path = null;
		if (vo != null) {
			session.setAttribute("id", id);
			session.setAttribute("name", vo.getName());
			session.setAttribute("author", vo.getAuthor());
			path = "main/mains";
			//System.out.println("로그인 성공");
		}else {
			path = "redirect:memberLoginForm.do";
			//System.out.println("로그인실패");
		}
		
		return path;
	}
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "main/mains";
	}
	@RequestMapping("/memberInsertForm.do")
	public String memberInsert() {
		return "member/memberInsertForm";
	}
	
	@PostMapping("/memberJoin.do")
	public String memberJoin(@Param("id") String id, @Param("password") String password, 
			@Param("name") String name,@Param("address") String address, @Param("tel") String tel) {
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setAddress(address);
		vo.setTel(tel);
		vo.setAuthor("USER");
		if (vo.getId()!=null && vo.getPassword()!=null &&vo.getId() != ""&&vo.getPassword() != ""&&vo.getName()!="" ) {
			memberDao.memberInsert(vo);	
			return "member/loginsuccess";
		}
		return "member/loginFail";
	}
	@RequestMapping("/memberSelect.do")
	public String memberSelect(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		vo.setId((String)session.getAttribute("id"));
		vo = memberDao.memberSelect(vo);
		request.setAttribute("member", vo);
		return "member/memberSelect";
	}
	@RequestMapping("/memberDelete.do")
	public String memberDelete(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		vo.setId((String)session.getAttribute("id"));
		memberDao.memberDelete(vo);
		session.invalidate();
		return "main/mains";
	}
	@RequestMapping("/memberUpdateForm.do")
	public String memberUpdate() {
		return "member/memberUpdateForm";
	}
	
	@RequestMapping("/memberUpdatess.do")
	public String memberUpdates(@Param("name") String name,@Param("address") String address,@Param("tel") String tel, HttpServletRequest request) {
	MemberVO vo = new MemberVO();
	HttpSession session = request.getSession();
	vo.setId((String)session.getAttribute("id"));
	vo.setName(name);
	vo.setAddress(address);
	vo.setTel(tel);
	vo.setAuthor("USER");
	memberDao.memberUpdate(vo);
	return "main/mains";
	}
	
	@RequestMapping("/Idcheck.do")
	@ResponseBody
	public String Idcheck(Model model, HttpServletRequest request) {
		MemberVO vo = new MemberVO();
		
		vo.setId(request.getParameter("chkId"));
		System.out.println(request.getParameter("chkId"));
		boolean b = memberDao.isCheckId(vo);
		String chk = "0";
		if(!b) { //true존재하면 0, false존재하지않으면 1
			chk= "1";
		}
		return chk;
	}
}
