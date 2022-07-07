# :book:  BOOKING 
도서 추천 웹 서비스 <br>
2022.01 ~ 2022.03 <br>
<a href="https://github.com/jjy321501/Booking">[ Booking ]</a> 재설계 및 배포 <a href="http://www.acornbook.me">http://www.acornbook.me/</a>

## 개발 환경 
- Front-End 
   - Html / CSS / Javascript 
-  Back-End
   - Java 
- __API__  
   - Naver 도서 Api
   - Kakao Map Api
   - KG 이니시스 결제 Api
   - Daum 도로명 Api 
 
## 디렉토리 구조
```bash
📦views
 ┣ 📂bookList
 ┃ ┣ 📜bestSeller.jsp
 ┃ ┣ 📜CategoryList.jsp
 ┃ ┗ 📜conditionSearch.jsp
 ┣ 📂detail
 ┃ ┣ 📜bookDetail.jsp
 ┃ ┣ 📜detailAjax.jsp
 ┃ ┗ 📜review_directInsertform.jsp
 ┣ 📂error
 ┃ ┣ 📜db_fail.jsp
 ┃ ┗ 📜not_allow.jsp
 ┣ 📂include
 ┃ ┣ 📜navbar.jsp
 ┃ ┣ 📜resource.jsp
 ┃ ┣ 📜sideindex.jsp
 ┃ ┗ 📜sideusers.jsp
 ┣ 📂map
 ┃ ┗ 📜mapsearch.jsp
 ┣ 📂pay
 ┃ ┣ 📜bootstrap.min.css.map
 ┃ ┣ 📜cart.jsp
 ┃ ┣ 📜delete.jsp
 ┃ ┣ 📜deleteCart.jsp
 ┃ ┣ 📜insert.jsp
 ┃ ┣ 📜order_insert.jsp
 ┃ ┣ 📜paid.jsp
 ┃ ┣ 📜pay.jsp
 ┃ ┗ 📜update.jsp
 ┣ 📂review
 ┃ ┣ 📂private
 ┃ ┃ ┣ 📜delete.jsp
 ┃ ┃ ┣ 📜reviewDelete.jsp
 ┃ ┃ ┣ 📜reviewInsert.jsp
 ┃ ┃ ┣ 📜reviewInsertform.jsp
 ┃ ┃ ┣ 📜reviewUpdate.jsp
 ┃ ┃ ┗ 📜reviewUpdateform.jsp
 ┃ ┣ 📜reviewBookList.jsp
 ┃ ┣ 📜reviewDetail.jsp
 ┃ ┗ 📜reviewList.jsp
 ┣ 📂users
 ┃ ┣ 📂private
 ┃ ┃ ┣ 📜delete.jsp
 ┃ ┃ ┣ 📜info.jsp
 ┃ ┃ ┣ 📜my_order.jsp
 ┃ ┃ ┣ 📜my_reply.jsp
 ┃ ┃ ┣ 📜my_review.jsp
 ┃ ┃ ┣ 📜order_detail.jsp
 ┃ ┃ ┣ 📜profile_upload.jsp
 ┃ ┃ ┣ 📜pwd_update.jsp
 ┃ ┃ ┣ 📜pwd_updateform.jsp
 ┃ ┃ ┣ 📜recentSearch.jsp
 ┃ ┃ ┣ 📜update.jsp
 ┃ ┃ ┗ 📜updateform.jsp
 ┃ ┣ 📜login.jsp
 ┃ ┣ 📜login_form.jsp
 ┃ ┣ 📜logout.jsp
 ┃ ┣ 📜signup.jsp
 ┃ ┗ 📜signup_form.jsp
 ┗📜home.jsp
```
## 구현 기능
| 홈 | 전체도서 | 리뷰 | 결제 | 마이페이지 | 지도 |
|:------:|:----------:|:----------:|:------:|:----------:|:-----:|
| 도서 검색 | 장르별 도서 | 리뷰 목록 | 북카트 | 개인정보 수정 | 서점 검색 |
| 맞춤 추천 | 인기 도서 | 리뷰 작성 | 배송비 추가 | 마이 리뷰 | |
| 랜덤 추천 | 최신 도서 | 별점 | 결제 | 작성 댓글 | |
| | 추천 도서 | 스포일러 | 즉시결제 | 주문 내역 | |
| | 상세 페이지 | 댓글 | |  | |
| | | 조회수 | | | |


-------------------------
## 주요 페이지

<table>
    <tr>
        <td align="center" width="300px">
            <a href="">🔗 홈</a>
        </td>
        <td align="center" width="300px">
            <a href="">🔗 로그인</a>
        </td>
        <td align="center" width="300px">
            <a href="">🔗 회원가입</a>
        </td>
    </tr>
    <tr>
        <td align="center">
            <img src="https://user-images.githubusercontent.com/72749783/177783390-b3a50c5a-9b07-4ecc-ba3c-edc7b23025e4.gif" height="300px" />
        </td>
        <td align="center">
            <img src="https://user-images.githubusercontent.com/72749783/177783985-6b2f78a6-855e-4bfd-807e-689db944f154.gif" height="300px" />
        </td>
        <td align="center">
            <img src="https://user-images.githubusercontent.com/72749783/177783724-1708b896-9457-4c98-a36a-b8370521b68a.gif" height="300px"/>
       </td>
    </tr>
    <tr>
        <td align="center" width="300px">
            <a href="">🔗 전체 도서</a>
        </td>
        <td align="center" width="300px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 베스트 셀러 </a>
        </td>
        <td align="center" width="300px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 리뷰</a>
        </td>
    </tr>
    <tr>
        <td align="center" width="300px">
            <img src="https://user-images.githubusercontent.com/72749783/177784354-8778d35f-235d-4a30-8dfa-c719384049c9.gif" height="300px"/>
        </td>
        <td align="center" width="300px">
            <img src="https://user-images.githubusercontent.com/72749783/177784664-71a58035-8ed3-48d0-8887-d70c5cd51c6e.gif"
 height="300px" />
        </td>
        <td align="center" width="300px">
            <img src="https://user-images.githubusercontent.com/72749783/177784861-77fb09ba-a7d2-4fd6-a7f1-e75fea42dca1.gif" height="300px"/>
       </td>
    </tr>
    <tr>
        <td align="center" width="300px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 마이페이지 </a>
        </td>
        <td align="center" width="300px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 북 카트 </a>
        </td>
        <td align="center" width="300px">
           <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 서점 찾기 </a>
        </td>
    </tr>
    <tr>
       <td align="center" width="300px">
            <img src="https://user-images.githubusercontent.com/72749783/177785817-f1c52032-89a2-46ee-bef9-0a347f8ed320.gif"
 height="300px" />
        </td>
        <td align="center" width="300px">
            <img src="https://user-images.githubusercontent.com/72749783/177785182-a7753f04-bd47-475f-992b-28aab3ca01f6.gif"
 height="300px"/>
        </td>
        <td align="center" width="300px">
           <img src="https://user-images.githubusercontent.com/72749783/177785527-6e65b7fc-7868-4fa8-b5f4-fd43bfae975d.gif" height="300px"/>
       </td>
   </tr>
</table>

--------------------
## 디자인 변경점

<table>
    <tr>
        <td colspan="2" align="center">
        메인 페이지
        </td>
    </tr>
    <tr>
        <td align="center">
           <img src="https://user-images.githubusercontent.com/72749783/177791536-ecf87e91-d1b0-42f4-a9c5-5e9436e018fb.PNG"  width="300" height="370">
       </td>
       <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177099847-48ea1e4a-523e-413f-b8b4-10aace6bca3c.PNG" width="300" height="370">
       </td>
    </tr>
</table>

<table>
    <tr>
        <td colspan="2" align="center">
        전체도서
        </td>
    </tr>
    <tr>
        <td align="center">
           <img src="https://user-images.githubusercontent.com/72749783/177792164-09e6586e-01b6-4504-853f-d0addec13c33.PNG" width="300" height="370">
       </td>
       <td align="center">
           <img src="https://user-images.githubusercontent.com/72749783/177792292-1239045a-2a46-437d-91f6-594b63b4e6a3.PNG" width="300"  height="370">
       </td>
    </tr>
</table>

<table>
    <tr>
        <td colspan="2" align="center">
        리뷰 게시판
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/117825504-57abe680-b2aa-11eb-878e-41ee15d9c47b.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177805092-b33c93aa-7d6b-4d82-8c56-f5f70de0ef70.PNG" width="300"  height="370">
       </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        리뷰 작성 폼
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177805204-aa3163b2-882d-4a39-8bba-f92d2219db1a.PNG" width="300"  height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177805249-b6403657-725b-41f1-8f2e-b62db27aad24.PNG" width="300" height="370">
       </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        리뷰 상세
        </td>
    </tr>
    <tr>
        <td align="center">
           <img src="https://user-images.githubusercontent.com/72749783/177805340-ad8564bd-3225-434a-befc-b3f4d95bcdd8.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177805747-4a88282a-b05a-455b-9602-89d0afbf47f7.PNG" width="300" height="370">
       </td>
    </tr>
</table>

<table>
    <tr>
        <td colspan="2" align="center">
        북카트
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177810825-ddbb279e-88fe-4ea0-8dd5-cc8e7354db02.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177810935-22002b74-3dae-498e-9a9b-a8c6f5a3b937.PNG" width="300" height="370">
       </td>
    </tr>
</table>


<table>
    <tr>
        <td colspan="2" align="center">
        계정 정보
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177814001-745ba9db-272c-4665-8eed-d987f3911597.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177814180-11fdad71-f80d-4849-a35e-aba1a07e82fb.PNG" width="300" height="370">
       </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        정보 수정
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177814246-dac5deff-2141-425c-8e42-228d33346d5c.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177814331-27c5b11d-c549-426e-adba-773c6be591a1.PNG" width="300" height="370">
       </td>
       <tr>
        <td colspan="2" align="center">
        비밀번호 수정
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177814438-116e1d52-26e1-416b-a1dd-9f21dbe4c0cd.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177814460-df1210c3-82ad-470e-9b30-f6245b023464.PNG" width="300" height="370">
       </td>
       <tr>
        <td colspan="2" align="center">
        주문 내역
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177814603-7311e359-7fb4-4728-9d75-b71cbf845e60.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177817050-414f043e-8c6f-471c-86e1-fc8ac49ff7ad.PNG" width="300" height="370">
       </td>
    </tr>
</table>

<table>
    <tr>
        <td colspan="2" align="center">
        서점 찾기
        </td>
    </tr>
    <tr>
        <td align="center" >
           <img src="https://user-images.githubusercontent.com/72749783/177817776-22994d4b-bd0d-4582-b339-75474c47cf5f.PNG" width="300" height="370">
       </td>
       <td>
           <img src="https://user-images.githubusercontent.com/72749783/177817802-aded2ea8-0e88-4e33-ae49-ad030d07d2e7.PNG" width="300" height="370">
       </td>
    </tr>
</table>





