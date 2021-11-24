package com.acorn5.booking.review.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.acorn5.booking.users.entity.Users;

@Entity
@Table(name = "BK_BOOK_REVIEW_DTL")
public class ReviewDtl {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "REVIEW_COMMENT_ID")
	private Long id; // 댓글 번호
	
	@ManyToOne
	@JoinColumn(name = "writer")
	private Users writer; // 댓글 작성자
	private String content; // 댓글 내용
	
	@ManyToOne
	@JoinColumn(name = "target_id")
	private Users target_id; // 댓글 대상자
	
	@Column(name = "ref_group")
	private Long refGroup; // 원글의 글번호
	
	@Column(name = "comment_group")
	private Long commentGroup; // 댓글 내에서의 그룹번호
	private String deleted; // 삭제된 댓글인지 여부 "yes" or "no"
	private LocalDateTime regdate; // 댓글 작성일자
	//private String profile; // 프로필 이미지 경로
	//private int startRowNum; // 댓글 페이지 넘버 시작 번호
	//private int endRowNum; // 댓글 페이지 넘버 끝 번호
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Users getWriter() {
		return writer;
	}
	public void setWriter(Users writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Users getTarget_id() {
		return target_id;
	}
	public void setTarget_id(Users target_id) {
		this.target_id = target_id;
	}
	public Long getRefGroup() {
		return refGroup;
	}
	public void setRefGroup(Long refGroup) {
		this.refGroup = refGroup;
	}
	public Long getCommentGroup() {
		return commentGroup;
	}
	public void setCommentGroup(Long commentGroup) {
		this.commentGroup = commentGroup;
	}
	public String getDeleted() {
		return deleted;
	}
	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	public LocalDateTime getRegdate() {
		return regdate;
	}
	public void setRegdate(LocalDateTime regdate) {
		this.regdate = regdate;
	}

	
}