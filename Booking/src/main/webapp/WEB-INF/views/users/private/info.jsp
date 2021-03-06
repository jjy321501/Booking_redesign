<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책과의 즉석만남 Booking</title>
<jsp:include page="../../include/resource.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/info.css">
<style>

</style>
<body >
<div class="layout">
	<div class="header">
		<div class="primary">
			<a href="${pageContext.request.contextPath }/user/${sessionScope.id}/info">
				<h4>안녕하세요 ,</h4>
				<span>${loginId } </span>님!
			</a>
		</div>
		<div class="secondary">
			<div class="top3">
				<a class="bd-card" href="${pageContext.request.contextPath }/user/${sessionScope.id}/review">
					<dl id="top-post" class="card">
						<dt class="label">
							<span>작성글 ></span>
						</dt>
						<dd class="value">
							<span class="count" id="reviewCount"></span>
							<span>개</span>
						</dd>
					</dl>
				</a>
				<a class="bd-card" href="${pageContext.request.contextPath }/user/${sessionScope.id}/reply">
					<dl id="top-reply" class="card">
						<dt class="label">
							<span>작성 댓글 ></span>
						</dt>
						<dd class="value">
							<span class="count" id="replyCount"></span>
							<span>개</span>
						</dd>
					</dl>
				</a>
				<a class="bd-card last" href="${pageContext.request.contextPath }/user/${sessionScope.id}/cart">
					<dl class="card">
						<dt class="label">
							<span>북카트 ></span>
						</dt>
						<dd class="value">
							<span class="count" id="cartCount"></span>
							<span>개</span>
						</dd>
					</dl>
				</a>
			</div>
		</div>
	</div>
	<div class="body">
		<div class="navigation">
			<div class="section">
				<div class="section-name">나의 쇼핑</div>
				<div class="linkList">
					<a id="side-order" class="link" href="${pageContext.request.contextPath }/user/${sessionScope.id}/order">주문 내역</a>
					<a class="link" href=""></a>
					<a class="link" href=""></a>
				</div>
			</div>
			<div class="section">
				<div class="section-name">계정 관리</div>
				<div class="linkList">
					<a id="side-profile" class="link" href="${pageContext.request.contextPath }/user/${sessionScope.id}/account">계정정보 수정</a>
					<a id="side-pwd" class="link" href="${pageContext.request.contextPath }/user/${sessionScope.id}/pwd">비밀번호 수정</a>
					<a id="side-recent" class="link" href="${pageContext.request.contextPath }/user/${sessionScope.id}/search">최근 검색 기록</a>
				</div>
			</div>
			<div class="section">
				<div class="section-name">북킹 소개</div>
			</div>
			<button class="logoutBtn">
				<a href="${pageContext.request.contextPath }/users/logout.do">로그아웃</a>
			</button>
		</div>
		<div class="content">
			<ul class="content-list">
				<li class="part">
					<div class="part-header">
						<span>최근 주문내역</span>
						<a href="${pageContext.request.contextPath }/user/${sessionScope.id}/order">주문전체보기 ></a>
					</div>
						<input type="hidden" id="startDate" name="startDate" value=""/>
						<input type="hidden" id="endDate" name="endDate" value=""/>
					<div id="myOrder" class="part-body">
						<table>
							<colgroup>
								<col style="width:60%"/>
								<col style="width:20%"/>
								<col style="width:20%"/>
							</colgroup>
							<thead>
								<tr>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</thead>
							<tbody id="recentOrderList">
								<!-- 
								<tr>
									<td>
										<div>총 1개 상품</div>
									</td>
									<td>
										<div>2021/10/10</div>
									</td>
									<td>
										<div class="order-num">1234567890</div>
									</td>
								</tr>
								 -->
							</tbody>
						</table>
					</div>
				</li>
				<li class="part">
					<div class="part-header">
						<span>내 계정 정보</span>
						<a href="${pageContext.request.contextPath }/user/${sessionScope.id}/account">변경하기 ></a>
					</div>
					<div class="part-body">
						<div class="info-account">
							<div>
								<span>아이디</span>
								<input type="text" id="userLoginId" disabled/>
								<br />
								<span>이메일</span>
								<input type="text" id="userEmail" disabled/>
							</div>
							<div style="flex:0.0076;"></div>
							<div class="scroll-box9">
					 			<table>
									<colgroup>
										<col style="width:12.12%">
										<col style="width:11%">
										<col style="width:9%">
										<col style="width:13.54%">
										<col style="width:11.11%">
										<col style="width:10.5%">
										<col style="width:11.11%">
										<col style="width:11.11%">
										<col style="width:10.5%">
									</colgroup>
									<tr class="interestChk" >
										<td><label for="novel"><input onclick="return false;" type="checkbox" name="care" id="novel" value="100"/> 소설</label></td>
										<td><label for="poetry"><input onclick="return false;" type="checkbox" name="care" id="poetry" value="110"/> 시 / 에세이</label></td>
										<td><label for="humanities"><input onclick="return false;" type="checkbox" name="care" id="humanities" value="120"/> 인문</label></td>
										<td><label for="home"><input onclick="return false;" type="checkbox" name="care" id="home" value="130"/> 가정/생활/요리</label></td>
										<td><label for="health"><input onclick="return false;" type="checkbox" name="care" id="health" value="140"/> 건강</label></td>
										<td><label for="hobby"><input onclick="return false;" type="checkbox" name="care" id="hobby" value="150"/> 취미/레저</label></td>
										<td><label for="economy"><input onclick="return false;" type="checkbox" name="care" id="economy" value="160"/> 경제/경영</label></td>
										<td><label for="self"><input onclick="return false;" type="checkbox" name="care" id="self" value="170"/> 자기계발</label></td>
										<td><label for="society"><input onclick="return false;" type="checkbox" name="care" id="society" value="180"/> 사회</label></td>
									</tr>
									<tr class="interestChk">
										<td><label for="art"><input onclick="return false;" type="checkbox" name="care" id="art" value="210"/> 예술/대중문화</label></td>
										<td><label for="history"><input onclick="return false;" type="checkbox" name="care" id="history" value="190"/> 역사/문화</label></td>
										<td><label for="religion"><input onclick="return false;" type="checkbox" name="care" id="religion" value="200"/> 종교</label></td>
										<td><label for="reference"><input onclick="return false;" type="checkbox" name="care" id="reference" value="220"/> 학습/참고서</label></td>
										<td><label for="language"><input onclick="return false;" type="checkbox" name="care" id="language" value="230"/> 국어/외국어</label></td>
										<td><label for="dictionary"><input onclick="return false;" type="checkbox" name="care" id="dictionary" value="240"/> 사전</label></td>
										<td><label for="science"><input onclick="return false;" type="checkbox" name="care" id="science" value="250"/> 과학/공학</label></td>
										<td><label for="employment"><input onclick="return false;" type="checkbox" name="care" id="employment" value="260"/> 취업/수험서</label></td>
										<td><label for="trip"><input onclick="return false;" type="checkbox" name="care" id="trip" value="270"/> 여행/지도</label></td>
									</tr>
									<tr class="interestChk">
										<td><label for="IT"><input onclick="return false;" type="checkbox" name="care" id="IT" value="280"/> 컴퓨터/IT</label></td>
										<td><label for="magazine"><input onclick="return false;" type="checkbox" name="care" id="magazine" value="290"/> 잡지</label></td>
										<td><label for="teenager"><input onclick="return false;" type="checkbox" name="care" id="teenager" value="300"/> 청소년</label></td>
										<td><label for="infant"><input onclick="return false;" type="checkbox" name="care" id="infant" value="310"/> 유아</label></td>
										<td><label for="child"><input onclick="return false;" type="checkbox" name="care" id="child" value="320"/> 어린이</label></td>
										<td><label for="comic"><input onclick="return false;" type="checkbox" name="care" id="comic" value="330" /> 만화</label></td>
										<td><label for="overseas"><input onclick="return false;" type="checkbox" name="care" id="overseas" value="340"/>해외도서</label></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<script>
	var todayDate = new Date();

	var endDate = todayDate.toLocaleDateString().replace('. ','-').replace('. ','-').replace('.','');
	todayDate.setDate(todayDate.getDate() - 7);
	var startDate = todayDate.toLocaleDateString().replace('. ','-').replace('. ','-').replace('.','');
	
	// 최근 주문내역 호출
	$.ajax({
	   	url:"${pageContext.request.contextPath}/v1/user/${sessionScope.id}/order/"+startDate+"/"+endDate,
	    method:"get",
		//dataType : "json",
		contentType : "application/json; charset=utf-8",
		//data : JSON.stringify(data),
	    success:function(data){
	    	var orderList = "";		        	
        	for (var i=0; i<data.content.length; i++) {
	        	orderList += '<tr class="recent" data-num="'+data.content[i].id+'" onclick="javascript:" >'
		        	orderList += '<td>'
			        	orderList += '<div>총 '+data.content[i].orderCount+'개 상품</div>'
		        	orderList += '</td>'
		        	orderList += '<td>'
			        	orderList += '<div>'+data.content[i].regdate+'</div>'
		        	orderList += '</td>'
		        	orderList += '<td>'
			        	orderList += '<div class="order-num">'+data.content[i].regdate.replace('-','').replace('-','').slice(0,8)+(data.content[i].id+"").padStart(8,'0')+'</div>'
		        	orderList += '</td>'
	        	orderList += '</tr>'
        	}
				
			$("#recentOrderList").html(orderList);
	    },
		error : function(data) {
			console.log("오류");
		}
	})
	//by준영, 최근구매목록 클릭시 detail 링크 
	$(document).on("click",".recent", function(){
		var id = $(this).attr("data-num");
		location.href="${pageContext.request.contextPath}/user/${sessionScope.id}/order/"+id;
	});
	// 작성글, 작성 댓글, 북카트, 나의 정보 호출
	$.ajax({
		url:"${pageContext.request.contextPath}/v1/user/${id}",
		method:"GET",
		dataType : "json",
		async: false,
		success:function(data) {
	    	$("#userLoginId").val(data.user.loginId);
	    	$("#userEmail").val(data.user.email);
			
			var myCare = data.user.care; 
			var careList = myCare.split(',');
			$('input:checkbox[name=care]').prop("disabled", true);
			for (var i = 0; i < careList.length; i++) {
				$('input:checkbox[value=' + careList[i] + ']').attr("checked", true);
				$('input:checkbox[value=' + careList[i] + ']').attr("disabled", false);
			}
			$("#reviewCount").html(data.review.totalElements);
			$("#replyCount").html(data.reviewDtl.totalElements);
			$("#cartCount").html(data.cart.totalElements);
			
		},
		error : function(data) {
			console.log("오류");
		}
	});
	
	//by준영, 현재시간 출력
	let today = new Date();
	
	$('#date').html(today.toLocaleString());
	
</script>
</body>
</html>