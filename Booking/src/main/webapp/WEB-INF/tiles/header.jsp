<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<script src="http://code.jquery.com/jquery-1.12.0.js"></script>
<style>
	
</style>
</head>
	<div class="mainWrap">
		<div class="center">
			<div class="logo">
				<a href="/">
					<img id="nav-logo" src="${pageContext.request.contextPath }/resources/images/bookinglogo.svg"/>
				</a>
			</div>
			<div class="search">
				<form id="searchForm" action="${pageContext.request.contextPath }/book/search" method="get" >  
			        <input id="searchBook" type="text" aria-label="Search"
			           name="keyword" placeholder="검색어를 입력하세요"/>
			        <input name="pageNum" value="1" hidden/>
			        <input name="start" value="1" hidden/>
			        <button type="submit" class="srcBtn" ><img src="${pageContext.request.contextPath }/resources/images/search.svg" alt="" /></button>
			    </form>
			    <a class="cart-box" href="${pageContext.request.contextPath }/user/${sessionScope.id}/cart" id="cartBtn">
		    		<img id="cartImg" src="${pageContext.request.contextPath }/resources/images/cart.svg"/>
		    		<span id="cartCountNum"></span>
			   	</a>
			</div>
			<c:choose>
				<c:when test="${not empty sessionScope.id }">
				<div class="Users">
						<a href="${pageContext.request.contextPath }/user/${sessionScope.id}/info" class="userImg "><img id="userProfileImg" src="" onerror="this.src='https://ssl.pstatic.net/static/common/myarea/myInfo.gif'"/></a>
					<div class="user-box" >
						<a href="${pageContext.request.contextPath }/user/${sessionScope.id}/info" class="member" >${loginId } 님</a>
						<a href="${pageContext.request.contextPath }/users/logout.do" class="member">로그아웃</a>
					</div>
				</div>
				</c:when>
				<c:otherwise>
				<div class="Users">
					<a href="#"  class="nonMember" id="modal-open" data-toggle="modal" data-target="#login">로그인</a>
					<a href="${pageContext.request.contextPath }/signup"  class="nonMember">회원가입</a>
				</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div class="navWrap">
		<ul class="Btns">
			<li>
				<a href="${pageContext.request.contextPath }/category?d_catg=100&sort=count&start=1">전체도서</a>
			</li>
			<li>
	        	<a href="${pageContext.request.contextPath }/bestSeller">베스트셀러 </a>
	     	</li>
			<li>
				<a href="${pageContext.request.contextPath }/reviews">도서리뷰 </a>
			</li>
			<li>
		        <a href="${pageContext.request.contextPath }/map">서점 찾기</a>
		    </li>
		</ul>
	</div>
	<!-- The Modal -->
	<div id="container"> 
		
	</div>
<script>
	var loginCheck = "${sessionScope.id}";
	if(loginCheck != "") {
		$.ajax({
			url:"${pageContext.request.contextPath}/v1/user/${sessionScope.id}/profile",
			method:"GET",
			dataType : "json",
			async: false,
			success:function(data) {
				var profileImg = data.profile;

				if( profileImg != "" ){
					$('#userProfileImg').attr('src', '${pageContext.request.contextPath}'+profileImg);
				}else{
					$('#userProfileImg').attr('src', 'https://ssl.pstatic.net/static/common/myarea/myInfo.gif');
				}
			},
			error : function(data) {
				console.log("오류");
			}
		});
	}
	
	if(loginCheck != "") {
		$.ajax({
			url:"${pageContext.request.contextPath}/v1/user/${sessionScope.id}/cart",
			method:"GET",
			dataType : "json",
			async: false,
			success:function(cartData) {
				if(cartData.length != 0){
					$("#cartCountNum").html(cartData.length);
					$("#cartCountNum").addClass("cartBadge");
				}
			},
			error : function(cartData) {
				console.log("오류");
			}
		});
	}
	
	//by 준영 리뷰리스트 로딩끝나고 헤더호출
	$('#header').hide();
	$('#main').ready(function(){
		$('#header').show();
	})
	//by 준영 검색창 빈값 제출 막기
	$(document).ready(function() {
	    $('#searchForm').submit(function() {
	        if ($('#searchBook').val() == '') {
	            return false;
	        }
	    }); 
	}); 
	
	//by준영. 로그인 시 모달창 기능
	$(function(){
		$("#modal-open").click(function(){   
			//$("#container").css('display','flex').hide().fadeIn();
			function modal(){
	            $.ajax({ 
	                url:"${pageContext.request.contextPath}/users/login_form.do",
	                method:"GET",
	                success:function(data){
	                   $("#container").html(data); 
	                },
	            })
	        }
	        modal();
		});
	});
	
	$("#cartBtn").click(function(){
		if("${sessionScope.id}" == '') {
			alert("로그인이 필요합니다.");
			document.getElementById('modal-open').click();
			return false;
		}		
	});
</script>

