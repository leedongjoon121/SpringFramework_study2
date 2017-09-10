package com.javalec.spring_mybatis;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 파이어 베이스 
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseCredentials;
import com.google.firebase.*;

//import com.javalec.spring_mybatis.dao.ContentDao;
import com.javalec.spring_mybatis.dao.IDao;

/**
 * Handles requests for the application home page.
 */


/*
 firebase url
<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyBzj8tTReYVkunjh2zHny5zWbBk57CxnI8",
    authDomain: "testapp-afd04.firebaseapp.com",
    databaseURL: "https://testapp-afd04.firebaseio.com",
    projectId: "testapp-afd04",
    storageBucket: "testapp-afd04.appspot.com",
    messagingSenderId: "219483154721"
  };
  firebase.initializeApp(config);
</script> 
  
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
/*	ContentDao dao;*/ // 전역 DAO 객체를 이용하지 않고, 그때그때 필요한  dao객체를 이용한다.
	
	@Autowired
	private SqlSession sqlSession; // sqlSession을 사용하기 위해 => setter필요없이 @Autowired로 사용
                                    // servlet-context.xml에 있음
	
/*	@Autowired
	public void setDao(ContentDao dao) {
		this.dao = dao;
	}*/
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
//		ArrayList<ContentDto> dtos = dao.listDao(); => 기존 방식, dao를 사용안해서
		// dao를 따로 만든다.

		IDao dao = sqlSession.getMapper(IDao.class); // sqlSession을 통해 IDao.xml에 있는 값들 가져옴
//		ArrayList<ContentDto> dtos = dao.listDao();
		model.addAttribute("list", dao.listDao()); // dao를 이용해 호출만 해주면 알아서 실행됨
		
		return "/list";
	}
	

	@RequestMapping("/index")
	public String index() {
		
		return "/index";
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		
		return "/writeForm";
	}
	
	@RequestMapping("/write") // 글 작성
	public String write(HttpServletRequest request, Model model) { 
		IDao dao = sqlSession.getMapper(IDao.class); // sqlSession을 통해 IDao.xml에 있는 값들 가져옴, 그때그때 필요한 IDao 객체를 생성
		dao.writeDao(request.getParameter("mWriter"), request.getParameter("mContent")); // 글 작성자, 글 내용 
		return "redirect:list";
	}
	
	@RequestMapping("/view")
	public String view() {
		return "/view";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("mId")); // 아이디 값에 따른 삭제
		return "redirect:list";
	}
	
}
