package com.vam.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.model.MemberVO;
import com.vam.service.MemberService;

@Controller
@RequestMapping(value="/recipient")
public class RecipientController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//비디오 페이지 이동
	@RequestMapping(value="/video", method=RequestMethod.GET)
	public void videoGET() {
		
		logger.info("비디오 페이지 진입");
		
	}
	
	//쇼핑몰 이동
	@RequestMapping(value="/shoppingMall", method=RequestMethod.GET)
	public String shoppingGET() {
		
		logger.info("쇼핑몰 페이지 진입");
		return "redirect:/main";
		
		
	}
	//메인 페이지 이동
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public void mainGET() {
		
		logger.info("피후원자 메인 페이지 진입");
		
	}
	
	
}
