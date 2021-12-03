package co.micol.lost;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
//		String formattedDate = dateFormat.format(date);
		
//		model.addAttribute("serverTime", formattedDate );
		
		return "main/mains";
	}
	@RequestMapping(value = "/ddd1.do")
	public String ddd1() {
		
		return "pic/pic1";
	}
	@RequestMapping(value = "/ddd2.do")
	public String ddd2() {
		
		return "pic/pic2";
	}
	@RequestMapping(value = "/ddd3.do")
	public String ddd3() {
		
		return "pic/pic3";
	}
	@RequestMapping(value = "/ddd4.do")
	public String ddd4() {
		
		return "pic/pic4";
	}
	@RequestMapping(value = "/ddd5.do")
	public String ddd5() {
		
		return "pic/pic5";
	}
	@RequestMapping(value = "/ddd6.do")
	public String ddd6() {
		
		return "pic/pic6";
	}
	@RequestMapping(value = "/ddd7.do")
	public String ddd7() {
		
		return "pic/pic7";
	}
	@RequestMapping(value = "/ddd8.do")
	public String ddd8() {
		
		return "pic/pic8";
	}
	@RequestMapping("/information.do")
	public String information() {
		
		return "main/information";
	}
	
	
}
