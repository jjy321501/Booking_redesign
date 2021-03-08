package com.acorn5.booking.users.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.acorn5.booking.users.dto.UsersDto;
import com.acorn5.booking.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService service;
	
	//by욱현. 개인 정보 수정 요청 처리_2021222
	@RequestMapping(value = "/users/private/update", 
			method = RequestMethod.POST)
	public ModelAndView update(UsersDto dto, HttpSession session,
			ModelAndView mView) {
		service.updateUser(dto, session);
		mView.setViewName("users/private/update");
		return mView;
	}
	
	//by욱현.개인정보 수정폼 요청 처리_2021222
	@RequestMapping("/users/private/updateform")
	public ModelAndView updateform(ModelAndView mView, 
			HttpSession session) {
		service.getInfo(mView, session);
		mView.setViewName("users/private/updateform");
		return mView;
	}
	
	//by욱현.프로필 이미지 업로드 요청 처리_2021222
	@RequestMapping("/users/private/profile_upload")
	public String profile_upload(MultipartFile image, 
			HttpServletRequest request) {
		//서비스를 이용해서 업로드 이미지를 저장하고 
		service.saveProfileImage(image, request);
		//회원 수정페이지로 다시 리다일렉트 시키기 
		return "redirect:/users/private/updateform.do";
	}
	
	//by욱현.비밀번호 수정 요청 처리_2021222
	@RequestMapping("/users/private/pwd_update")
	public ModelAndView pwd_update(ModelAndView mView, UsersDto dto, HttpServletRequest request,
			HttpSession session) {
		//UsersDto 에는 폼전송된 구비밀번호, 새비밀번호가 담겨 있다.
		service.updateUserPwd(mView, dto, request, session);
		mView.setViewName("users/private/pwd_update");
		return mView;
	}
	
	//by욱현.비밀번호 수정 폼 요청 처리_2021222
	@RequestMapping("/users/private/pwd_updateform")
	public String pwd_updateform() {
		return "users/private/pwd_updateform";
	}
	
	//by욱현.회원 탈퇴 요청 처리_2021222
	@RequestMapping("/users/private/delete")
	public String delete(HttpSession session) {
		service.deleteUser(session);
		return "users/private/delete";
	}
	
	//by욱현.개인정보 보기 요청처리_2021222
	@RequestMapping("/users/private/info")
	public ModelAndView info(ModelAndView mView, HttpSession session) {
		
		service.getInfo(mView, session);
		
		mView.setViewName("users/private/info");
		return mView;
	}
	
	//by욱현.로그 아웃 요청 처리_2021222
	@RequestMapping("/users/logout")
	public String logout(HttpSession session) {
		// session.invalidate(); //세션 초기화 
		session.removeAttribute("id"); //세션에서 id 삭제
		
		return "users/logout";
	}
	
	//by욱현.로그인 요청 처리_2021222
	@RequestMapping(value = "/users/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request,
			HttpServletResponse response) {
		//로그인에 관련된 로직을 서비스를 통해서 처리한다.
		service.loginLogic(request, response);
		//view page  로 forward  이동해서 응답
		return "users/login";
	}
	
	//by욱현.로그인 폼 요청 처리_2021222
	@RequestMapping("/users/login_form")
	public ModelAndView loginform(HttpServletRequest request, 
			ModelAndView mView) {
		//로그인 폼에 관련된 로직을 서비스를 통해서 처리한다.
		service.loginformLogic(request, mView);
		//view page 정보도 담는다.
		mView.setViewName("users/login_form");
		//리턴
		return mView;
	}
	
	//by욱현.회원 가입 요청처리_2021222
		/*form 전송은 보통 post 방식 요청인데 post 방식 요청만 받아들이도록 
		컨트롤러에 설정하는게 일반적이다.*/ 
	@RequestMapping(value = "/users/signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute("dto") UsersDto dto) {
		service.addUser(dto);
		return "users/signup";
	}
	//by욱현.회원가입폼_2021222
	@RequestMapping("/users/signup_form")
	public String signupForm() {
		return "users/signup_form";
	}
	
	//by욱현.중복아이디 검사를 위한 ajax 요청 처리_2021222 
	@RequestMapping("/users/checkid")
	@ResponseBody
	public Map<String, Object> checkid(@RequestParam String inputId,
			ModelAndView mView) {
		//서비스를 이용해서 해당 아이디가 존재하는지 여부를 알아낸다.
		boolean isExist=service.isExistId(inputId);
		// {"isExist":true} or {"isExist":false} 를 응답하기 위한 Map 구성
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("isExist", isExist);
		return map;
	}
}