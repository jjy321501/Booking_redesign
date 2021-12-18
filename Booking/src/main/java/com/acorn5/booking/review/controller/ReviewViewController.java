package com.acorn5.booking.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.acorn5.booking.pay.service.CartService;
import com.acorn5.booking.review.dto.ReviewCommentDto;

import com.acorn5.booking.review.dto.ReviewDto;
import com.acorn5.booking.review.entity.Review;
import com.acorn5.booking.review.entity.ReviewDtl;
import com.acorn5.booking.review.repository.ReviewCommentRepository;
import com.acorn5.booking.review.repository.ReviewRepository;
import com.acorn5.booking.review.service.ReviewService;

@Controller
public class ReviewViewController {
	
	// by남기, 의존객체 DI 을 필드에 선언해둔다_210303
	@Autowired
	private ReviewService service;

	@Autowired
	private ReviewRepository reviewRepository;
	
	@Autowired
	private ReviewCommentRepository reviewCommentRepository;
	
	//by우석, navbar cartitem count 보이기위한 cartservice 주입_20210315
	@Autowired
	private CartService cartservice;
	
	// by남기, 글 목록 요청처리_210303
	@RequestMapping("/review")
	public String list(Model model ,HttpServletRequest request) {
		
		Long id=(Long)request.getSession().getAttribute("id");
		if(id!=null) {
		//by 우석, view page 에서 cartitem 불러오기_210315 
		//cartservice.listCart(request); 
		}
		
		//Page<Review> review = service.getList(request);
		//model.addAttribute("pageNum", review.getNumber());
		// by남기, view page 로 forward 이동해서 응답_210303
		//mView.setViewName("review/reviewList");
		return "review/reviewList.page"; 
	}
	
	// by남기, 글 상세정보 요청처리_210303  
	@RequestMapping(value = "/review/{id}")
	public String detail(@PathVariable Long id, Model model
			,HttpServletRequest request) {
		// by남기, 자세히 보여줄 글번호가 파라미터로 넘어온다_210303
		//Review review = service.getDetail(id);
		//String writer = review.getWriter().getLoginId();
		Long loginId=(Long)request.getSession().getAttribute("id");
		Review dto=reviewRepository.findReviewDetail(id);
		reviewRepository.addViewCount(id);
		
		List<ReviewDtl> reviewCommentList= reviewCommentRepository.findByRefGroup(id);
		
		if(loginId!=null) { //by 우석, view page 에서 cartitem 불러오기_210315
			//cartservice.listCart(mView, request); 
		}
		// by남기, view page 로 forward 이동해서 응답_210303
		model.addAttribute("reviewId", id);
		model.addAttribute("reviewCommentList", reviewCommentList);
		model.addAttribute("dto", dto);
		//model.addAttribute("loginId", loginId);
		//model.addAttribute("writer", writer);
		//mView.setViewName("review/reviewDetail");
		return "review/reviewDetail.page";
	}
	

	// by남기, 새 리뷰 작성 폼 요청 처리_210303
	@RequestMapping("/private/reviewInsertform")
	public String insertform() {
		// by남기, view page 로 forward 이동해서 응답_210303
		return "review/private/reviewInsertform.page";

	}

	// by남기, 리뷰 수정 폼 요청 처리_210303
	@RequestMapping("/private/reviewUpdateform")
	public ModelAndView updateform(@RequestParam Long num,
			ModelAndView mView, HttpServletRequest request) {
		// by남기, 수정할 리뷰의 글번호가 파라미터로 넘어온다_210303
		//service.getDetail(num);
		//cartservice.listCart(mView, request);
		// by남기, view page 로 forward 이동해서 응답_210303
		mView.setViewName("review/private/reviewUpdateform");
		return mView;
	}
	
	// by남기, 리뷰 수정 요청 처리_210303
	@RequestMapping(value = "/reviewUpdate", method = RequestMethod.PUT)
	public String update(@PathVariable("id") Long id, @RequestBody Review review) {
		// by남기, 수정할 리뷰의 정보를 dto에서 가져온다_210303
		//service.updateContent(id, review);
		// by남기, view page 로 forward 이동해서 응답_210303
		return "review/private/reviewUpdate";
	}
	// by남기, 리뷰의 댓글 리스트 요청 처리_210303
	@RequestMapping("/reviewCommentList")
	public ModelAndView reviewCommentList(HttpServletRequest request,
			ModelAndView mView) {
		// by남기, 댓글 리스트를 request영역에서 가져온다_210303
		service.moreCommentList(request);
		// by남기, view page 로 forward 이동해서 응답_210303
		mView.setViewName("review/reviewCommentList");
		return mView;
	}

	// by남기, 댓글 수정 ajax 요청에 대한 요청 처리_210303
	@RequestMapping(value = "/review/private/reviewComment_update", 
			method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> reviewCommentUpdate(ReviewDtl dto){
		// by남기, 댓글을 수정 반영하고_210303
		service.updateComment(dto);
		// by남기, JSON 문자열을 클라이언트에게 응답한다_210303
		Map<String, Object> map=new HashMap<>();
		map.put("num", dto.getId());
		map.put("content", dto.getContent());
		return map;
	}
	// by남기, 리뷰의 댓글 삭제 요청 처리_210303
	@RequestMapping("/review/private/reviewComment_delete")
	public ModelAndView reviewCommentDelete(HttpServletRequest request,
			ModelAndView mView, @RequestParam int refGroup) {
		// by남기, 삭제할 댓글의 정보를 request 영역에서 가져온다_210303
		service.deleteComment(request);
		// by남기, reviewDetail page 로 리다일렉트 이동시킨다_210303
		mView.setViewName("redirect:/review/"+refGroup);
		return mView;
	}
	// by남기, 새 댓글 저장 요청 처리_210303
	@RequestMapping(value = "/review/private/reviewComment_insert", 
			method = RequestMethod.POST)
	public String reviewCommentInsert(HttpServletRequest request,
			@RequestParam int refGroup) {
		// by남기, 새 댓글을 저장하고_210303
		service.saveComment(request);
		// by남기, 글 자세히 보기로 다시 리다일렉트 이동 시킨다_210303
		return "redirect:/review/"+refGroup;// by남기, ref_group 은 자세히 보기 했던 글번호_210303 
	}
	
}
