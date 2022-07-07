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
        <td align="center" width="400px">
            <a href="">🔗 홈</a>
        </td>
        <td align="center" width="400px">
            <a href="">🔗 로그인</a>
        </td>
        <td align="center" width="400px">
            <a href="">🔗 회원가입</a>
        </td>
    </tr>
    <tr>
        <td align="center" width="150px" >
            <img src="https://user-images.githubusercontent.com/93498523/168758472-13a08e0d-62a9-4925-ac78-5a9d668ae42c.png" height="300px" width="400px"/>
        </td>
        <td align="center" width="150px">
            <img src="https://user-images.githubusercontent.com/93498523/168758062-86882746-e624-40ff-aad8-538f9d681dfd.png" height="100px" width="150px"/>
        </td>
        <td align="center" width="150px">
            <img src="https://user-images.githubusercontent.com/93498523/168759620-6994602d-e011-41cf-ae25-1c662af9ab42.png" height="100px" width="150px"/>
       </td>
    </tr>
    <tr>
        <td align="center" width="400px">
            <a href="">🔗 전체 도서</a>
        </td>
        <td align="center" width="150px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 베스트 셀러 </a>
        </td>
        <td align="center" width="150px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 리뷰</a>
        </td>
    </tr>
    <tr>
        <td align="center" width="150px">
            <img src="https://user-images.githubusercontent.com/93498523/168769562-93df1577-edf5-4bbe-af62-541b304ee652.png" height="100px" width="150px"/>
        </td>
        <td align="center" width="150px">
            <img src="https://user-images.githubusercontent.com/93498523/168770352-eb6f2934-93ec-4b7a-b353-ab2b3bf97a7d.png" height="100px" width="150px"/>
        </td>
        <td align="center" width="150px">
            <img src="https://user-images.githubusercontent.com/93498523/168762326-f37dcfbb-8ddd-491f-843e-a7e768a93421.png" height="100px" width="150px"/>
       </td>
    </tr>
    <tr>
        <td align="center" width="150px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 마이페이지 </a>
        </td>
        <td align="center" width="150px">
            <a href="https://user-images.githubusercontent.com/93498523/168769877-f1fb57b0-f474-44d3-be1d-48d9c3ee9cd6.png">🔗 북 카트 </a>
        </td>
        <td>
        </td>
    </tr>
    <tr>
       <td align="center" width="150px">
            <img src="https://user-images.githubusercontent.com/93498523/168761745-990ccc0c-2b2e-4905-8219-61adc0e527b1.png" height="100px" width="150px"/>
        </td>
        <td align="center" width="150px">
            <img src="https://user-images.githubusercontent.com/93498523/168765189-164c6ace-b058-4001-aef7-e7bbdbaa957b.png" height="100px" width="150px"/>
        </td>
        <td>
       </td>
   </tr>
</table>


### 메인 페이지 ( Home )
<table>
    <tr>
        <td align="center" width="400px">
            <a href="">🔗 메인 페이지</a>
        </td>
    </tr>
    <tr>
        <td align="center" width="150px" >
            <img src="https://user-images.githubusercontent.com/72749783/177099847-48ea1e4a-523e-413f-b8b4-10aace6bca3c.PNG"  width="450" height="370">
       </td>
    </tr>
</table>

### 전체도서 
#### *( 카테고리 )* 
<img src="https://user-images.githubusercontent.com/72749783/117824808-c0469380-b2a9-11eb-9c1a-94f2ef8ba6a2.PNG"  width="450" height="370">

### 리뷰 
#### *( 목록 / 리뷰쓰기 / 책 검색 / 댓글 )*
<img src="https://user-images.githubusercontent.com/72749783/117825504-57abe680-b2aa-11eb-878e-41ee15d9c47b.PNG"  width="450" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825519-5a0e4080-b2aa-11eb-9dbb-04bb449afa17.PNG"  width="450" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825528-5b3f6d80-b2aa-11eb-82a2-7a19e173f5fb.PNG"  width="450" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825534-5c709a80-b2aa-11eb-89db-90ef238f62b9.PNG"  width="450" height="370">

### 북카트 
#### *(카트수량 뱃지)*
<img src="https://user-images.githubusercontent.com/72749783/117825742-8924b200-b2aa-11eb-9913-5c31fc50247c.PNG"  width="450" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825755-8cb83900-b2aa-11eb-91fb-ef69a01ef538.PNG"  width="450" height="370">

### 마이페이지 
#### *( 활동내역 / 회원정보관리 )*
<img src="https://user-images.githubusercontent.com/72749783/117824957-dd7b6200-b2a9-11eb-9706-b07d5092ab18.PNG"  width="450" height="370">

### 지도 
#### *( 서점검색 )*
<img src="https://user-images.githubusercontent.com/72749783/117825693-7f02b380-b2aa-11eb-97c3-0eace5fab65f.PNG"  width="450" height="370">





