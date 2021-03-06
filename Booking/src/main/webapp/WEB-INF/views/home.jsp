<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="include/resource.jsp"></jsp:include>
<title>책과의 즉석만남 Booking</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.js" integrity="sha512-c5JDIvikBZ6tuz+OyaFsHKvuyg+tCug3hf41Vmmd5Yz9H5anj4vZOqlBV5PJoEbBJGFCgKoRT9YAgko4JS6/Qw==" crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/home.css">
<style>
	
</style>
</head>
<body>
	<div class="container" > <!-- container -->
		<c:choose>
		<c:when test="${not empty sessionScope.id }">
		<div class="C-logo"><strong>${sessionScope.loginId }</strong>님을 위한 추천도서</div>
		</c:when>
		<c:otherwise>
		<div class="C-logo">북킹이 엄선한 이달의 추천</div>
		</c:otherwise>
		</c:choose>
		<div class="top"> <!-- by욱현. 추천도서에 carousel css 적용_2021227 -->
			<div class="Lbutton" onclick="shiftLeft()" >
				<img src="https://image.ibb.co/mRsEb7/left_arrow.png" alt="">
			</div>
			<div class="cards-wrapper">
				<ul class="cards__container">
					<li class="box">
						<div class="card">
						   	<a href="${pageContext.request.contextPath }/book/${list[0].isbn}" id="isbn">
								<div class="img-wrapper">
							  		<img class="card-img-top" src="${list[0].image }" />
							  		<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
							   	</div>
							</a>
				  		</div>
				  		<div class="card-body">
							<p class="card-text"><strong>${list[0].title }</strong></p>
							<small class="card-text">${list[0].author }</small>
				      	</div>
					</li>
					<li class="box">
						<div class="card">
							<a href="${pageContext.request.contextPath }/book/${list[1].isbn}" id="isbn">
								<div class="img-wrapper">
								  	<img class="card-img-top" src="${list[1].image }" />
									<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
								</div>
							</a>
						</div>
						<div class="card-body">
							<p class="card-text"><strong>${list[1].title }</strong></p>
							<small class="card-text">${list[1].author }</small>
						</div>
					</li>
					<li class="box">
						<div class="card">
						     <a href="${pageContext.request.contextPath }/book/${list[2].isbn}" id="isbn">
								<div class="img-wrapper">
						  			<img class="card-img-top" src="${list[2].image }" />
						  			<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
						  		</div>
							</a>
					 	</div>
						<div class="card-body">
							<p class="card-text"><strong>${list[2].title }</strong></p>
							<small class="card-text">${list[2].author }</small>
				      	</div>
					</li>
					<li class="box box--hide">
						<div class="card">
						   	<a href="${pageContext.request.contextPath }/book/${list[3].isbn}" id="isbn">
								<div class="img-wrapper">
						  			<img class="card-img-top" src="${list[3].image }" />
					  				<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
					  			</div>
							</a>
						</div>
						<div class="card-body">
							<p class="card-text" ><strong>${list[3].title }</strong></p>
							<small class="card-text" >${list[3].author }</small>
				    	</div>
					</li>
					<li class="box box--hide">
						<div class="card">
						   	<a href="${pageContext.request.contextPath }/book/${list[4].isbn}" id="isbn">
								<div class="img-wrapper">
						  			<img class="card-img-top" src="${list[4].image }" />
						  			<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
						  		</div>
							</a>
						</div>
						<div class="card-body" >
							<p class="card-text" ><strong>${list[4].title }</strong></p>
							<small class="card-text" >${list[4].author }</small>
					   	</div>
					</li>
					<li class="box box--hide">
						<div class="card">
						   	<a href="${pageContext.request.contextPath }/book/${list[5].isbn}" id="isbn">
								<div class="img-wrapper">
						  			<img class="card-img-top" src="${list[5].image }" />
					  				<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
					  			</div>
							</a>
						</div>
						<div class="card-body">
							<p class="card-text"><strong>${list[5].title }</strong></p>
							<small class="card-text" >${list[5].author }</small>
				    	</div>
					</li>
					<li class="box box--hide">
						<div class="card">
						   	<a href="${pageContext.request.contextPath }/book/${list[6].isbn}" id="isbn">
								<div class="img-wrapper">
						    		<img class="card-img-top" src="${list[6].image }" />
						  			<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
						  		</div>
							</a>
						</div>
						<div class="card-body" >
							<p class="card-text" ><strong>${list[6].title }</strong></p>
							<small class="card-text" >${list[6].author }</small>
				    	</div>
					</li>
					<li class="box box--hide">
						<div class="card mb-3">
						   	<a href="${pageContext.request.contextPath }/book/${list[7].isbn}" id="isbn">
								<div class="img-wrapper">
						  			<img class="card-img-top" src="${list[7].image }" />
						  			<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
						  		</div>
							</a>
						</div>
						<div class="card-body">
							<p class="card-text" ><strong>${list[7].title }</strong></p>
							<small class="card-text" >${list[7].author }</small>
				    	</div>
					</li>
					<li class="box box--hide">
						<div class="card mb-3">
						   	<a href="${pageContext.request.contextPath }/book/${list[8].isbn}" id="isbn">
								<div class="img-wrapper">
						  			<img class="card-img-top" src="${list[8].image }" />
						   			<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
						   		</div>
							</a>
						</div>
						<div class="card-body" >
							<p class="card-text" ><strong>${list[8].title }</strong></p>
							<small class="card-text" >${list[8].author }</small>
				    	</div>
					</li>
					<li class="box box--hide">
						<div class="card mb-3">
						   	<a href="${pageContext.request.contextPath }/book/${list[9].isbn}" id="isbn">
								<div class="img-wrapper">
						  			<img class="card-img-top" src="${list[9].image }" />
						  			<span class="mask">
								  		<span class="bg1"></span>
								  		<span class="bg2"></span>
							  		</span>
						  		</div>
							</a>
						</div>
						<div class="card-body" >
							<p class="card-text" ><strong>${list[9].title }</strong></p>
							<small class="card-text" >${list[9].author }</small>
				      	</div>
					</li>
				</ul>
			</div>  <!-- /cards-wrapper -->
			<div class="Rbutton" onclick="shiftRight()">
				<img src="https://image.ibb.co/dfPSw7/right_arrow.png" alt="">
			</div>        
		</div>  <!-- /top -->
		<div class="bottom"> <!-- bottom -->
			<div class="booking">
				<div class="row"> <!-- Example row of columns -->
					<div class="col-6" >
					  	<div class="B-logo"><strong>낯선 책과의 즉석만남</strong> 하트를 눌러 만나보세요 </div>
					  	<a id="bookingBtn" href="javascript:">
					  		<img src="resources/images/bookingBtn.svg"/>
					  	</a>
					</div>
					<div class="col-6">
						<div id="bookingBook">
							<a id="bookA">
								<img id="bookimage" src="resources/images/message.svg"/>
								<span class="mask-booking">
							  		<span class="bg1-booking"></span>
							  		<span class="bg2-booking"></span>
						  		</span>
							</a>
						</div>
					</div>
					<script>
						var bimg = document.getElementById("bookimage");
						$("#bookingBtn").on("click", function(){
							bimg.style.boxShadow = "rgba(0, 0, 0, 0.25) 0px 0.0625em 0.0625em, rgba(0, 0, 0, 0.25) 0px 0.125em 0.5em, rgba(255, 255, 255, 0.1) 0px 0px 0px 1px inset";
						});
					</script>
				</div> <!-- /row -->
			</div> <!-- /booking -->
			<br />
		</div> <!-- /bottom -->
	</div> <!-- /container -->
	<br />
	<br />
	<br />
</body>
<script>
   //by욱현. booking서비스(랜덤 책 추천 기능) ajax요청처리_2021226
      $.ajax({
         url:"${pageContext.request.contextPath }/booking.do",
         method:"get",
         success:function(data){
       	 var i = 0; 
	     $("#bookingBtn").on("click", function(){
			i++;		
           	//요소의 속성 변경
            $('#bookimage').attr("src", data[i].image);
            if(isbn!=""){
            	$('#bookA').attr("href", "book/"+data[i].isbn);
            }            
		 })
			
         }   
      })
      
      
   
   // by욱현.추천도서에 carousel 적용위한 외부 자바스크립트 로드_2021227
   
   function shiftLeft() {
    const boxes = document.querySelectorAll(".box");
    const tmpNode = boxes[0];
    boxes[0].className = "box move-out-from-left";
    setTimeout(function() {
        if (boxes.length > 3) {
            tmpNode.classList.add("box--hide");
            boxes[3].className = "box move-to-position3-from-left";
        }
        boxes[1].className = "box move-to-position1-from-left";
        boxes[2].className = "box move-to-position2-from-left";
       
        boxes[0].remove();
        document.querySelector(".cards__container").appendChild(tmpNode);
    }, 500);
   }
   function shiftRight() {
       const boxes = document.querySelectorAll(".box");
       boxes[2].className = "box move-out-from-right";
       setTimeout(function() {
           const noOfCards = boxes.length;
           if (noOfCards > 2) {
               boxes[2].className = "box box--hide";
           }
   
           const tmpNode = boxes[noOfCards - 1];
           tmpNode.classList.remove("box--hide");
           boxes[noOfCards - 1].remove();
           let parentObj = document.querySelector(".cards__container");
           parentObj.insertBefore(tmpNode, parentObj.firstChild);
           tmpNode.className = "box move-to-position1-from-right";
           boxes[0].className = "box move-to-position2-from-right";
           boxes[1].className = "box move-to-position3-from-right";
  
       }, 500);
   }
   
   $(document).ready(function() {
	    $('#searchForm').submit(function() {
	        if ($('#searchBook').val() == '') {
	            alert('검색어를 입력하세요.');
	            return false;
	        }
	    }); 
	}); 
	$(document).ready(function(){
	   $.ajax({
           url:"${pageContext.request.contextPath }/bestSeller?d_cont=1",
           method:"GET",
           data:"&sort=count",
           success:function(data){
              $("#bestSeller").html(data); //by 준영, 책 리뷰 리스트 페이지를 #reviewList div 에 html 로 추가_210226
           }
	   })
   })
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</html>
