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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.model.MemberVO;
import com.vam.model.OrderPageDTO;
import com.vam.service.MemberService;

@Controller
@RequestMapping(value="/sponsor")
public class SponsorController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	//후원하기 창 이동
	@RequestMapping(value="/sponsoring", method=RequestMethod.GET)
	public void sponsoringGET() {
		
		logger.info("후원하기 창 진입");
		
	}
	
	//쇼핑몰 이동
	@RequestMapping(value="/recipientImfo", method=RequestMethod.GET)
	public void recipientImfoGET() {
		
		logger.info("피후원자 정보창 진입");
		
		
	}
	
	//본인 정보창 이동
	@RequestMapping(value="/myImfo", method=RequestMethod.GET)
	public void myImfoGET(Model model) {
		
		model.addAttribute("listCheck", "empty");
		
		logger.info("피후원자 정보창 진입");
		
		
	}
	//후원자 메인페이지 이동
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public void mainGET() {
		
		logger.info("후원자 메인페이지 진입");
		
	}
	
	
}
