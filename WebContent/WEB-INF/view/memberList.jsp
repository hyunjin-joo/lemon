
<%@page import="java.util.Vector"%>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<title>고객센터 > 문의내역 - Lemon</title>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/lemon.png" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/head.css">
		<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/mlist.css">
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/foot.css">
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
</head>
<body>
	
	<div id="wrap">
		<div id="header" class="main">
			<div id="header_wrap" class="pr_none">
				<div id="gnb" class="clfix">
					<div id="util_menu">
						<div class="top_left">
							<ul class="clfix"
								style="margin: 0; padding: 0; width: 68px; height: 36px;">
								<li class="first_child d"><a href="#" class="menu01"><span>레몬
											티켓</span></a></li>
							</ul>
						</div>
						<div class="top_right">
							<ul class="clfix">
							
								<li class="first_child" style="margin-top:-6px;"><a href="#"><span><i class="fas fa-music" style="color:gold"></i> 이용권</span></a></li>
								<li><a href="#"><span>이벤트</span></a></li>
								<li class="last_child"><a href="list2.do"><span>공지사항</span></a></li>
							</ul>
						</div>
					</div>
					<div class="line"></div>
					<!-- <div class="h_center"> -->
					<h1>
						<a href="/pro_board/index.jsp"><img width="160" height="50"
							src="<%=request.getContextPath()%>/img/로고.png"></a>
					</h1>
					<fieldset>
						<input type="text" title="검색 입력 편집창"
							style="width: 249px; display: block" autofocus>
						<button type="button" class="btn_icon search_m" title="검색">
							<span class="odd_span"><i class="fas fa-search"></i></span>
						</button>
					</fieldset>

					<div class="realtime_soar_keyword">
						<a href="#" class="title" style="display: inline-block">급상승</a>
						<div class="keyword_overlay">
							<ul id="rolling_box">
								<li class="card_sliding" id="first"><p></p></li>
								<li class="" id="second"><p></p></li>
								<li class="" id="third"><p></p></li>
							</ul>
						</div>
					</div>
					<div class="hide_box">
						<ul>
							<li><a href="#">1. DEAN <i class="fas fa-arrow-up">
										7</i></a></li>
							<li><a href="#">2. 자장가 <i class="fas fa-minus"></i></a></li>
							<li><a href="#">3. 드라마 ost <i class="fas fa-arrow-up"
									style="padding-left: 25px;"> 5</i></a></li>
							<li><a href="#">4. 아이유 <i class="fas fa-minus"></i></a></li>
							<li><a href="#">5. Eminem <i class="fas fa-arrow-down"
									style="padding-left: 36px;"> 2</i></a></li>
							<li><a href="#">6. 한동근 <i class="fas fa-minus"></i></a></li>
							<li><a href="#">7. 오혁 <i class="fas fa-minus"
									style="padding-left: 58.5px;"></i></a></li>
							<li><a href="#">8. Beyonce <i class="fas fa-minus"
									style="padding-left: 38.5px;"></i></a></li>
							<li><a href="#">9. 클래식 <i class="fas fa-arrow-down"
									style="padding-left: 43px;"> 6</i></a></li>
							<li><a href="#" class="ten">10. 서인국 <span
									class="fas_nono" style="padding-left: 42px;">new</span></a></li>
							<li class="more_music"><a href="#">더보기<i
									class="fas fa-angle-right"></i></a></li>
						</ul>
					</div>
					<div class="cmn_banner">
						<a href="#" style="display: inline"><img width="250"
							height="75"src="<%=request.getContextPath()%>/img/광고2.jpg"></a>
					</div>
				</div>
				<div id="gnb_menu">
					<ul>
						<li class="nth1"><a href="#" class="cur_menu"><span
								class="menu_bg menu01">레몬차트</span></a></li>
						<li class="nth2"><a href="#" class="cur_menu"><span
								class="menu_bg menu02">최신음악</span></a></li>
						<li class="nth3"><a href="#" class="cur_menu"><span
								class="menu_bg menu03">장르음악</span></a></li>
						<li class="nth4"><a href="#" class="cur_menu"><span
								class="menu_bg menu04">레몬TV</span></a></li>
						<li class="nth5"><a href="#" class="cur_menu"><span
								class="menu_bg menu05">추천</span></a></li>
						<li class="nth6"><a href="#" class="cur_menu"><span
								class="menu_bg menu06">매거진</span></a></li>
						<li class="nth7 last_child"><a href="#" class="cur_menu"><span
								class="menu_bg menu07">뮤직어워드</span></a></li>

					</ul>
					<ul class="sub_gnb">
<a href="#" calss="cur_menu"> <span class="menu_bg menu09">마이뮤직</span>
						</a>
					</ul>
				</div>
			</div>
		</div>
<div class="line2"></div>
<div id="cont_wrap" class="clfix">
			<div id="conts_section" class="pr_none">
				<div id="conts" class="clfix">
				
				<h2 class="f_tit mb20">Lemon 회원정보</h2>

<div class="s_head mt24">
 <u:isLogin> 
<c:choose>
<c:when test="${authUser.id eq'admin'}">
<input type="button" value="메인으로" class="btn" onclick="location.href='index.jsp'"
>  
<!-- <button type="button"><a href="#">회원문의</a></button> -->
</c:when>
<c:otherwise>
<button type="button"><a href="write.do">작성하기</a></button>
</c:otherwise>
</c:choose>
 </u:isLogin> 
</div>	


<div id="pageList">
<div class="tb_list02 type02 mt8">

<table border="1" style="width:100%">
<colgroup>
<col style="width:80px">
<col style="width:80px">
<col style="width:80px">
<col style="width:80px">
<col style="width:88px">
<col style="width:100px">
<col style="width:125px">

</colgroup>
<thead>
	<tr>
		<th scope="col">
		<div class="wrap pd_none">아이디</div></th>
		
		<th scope="col">
		<div class="wrap">비밀번호</div></th>
		
		<th scope="col">
		<div class="wrap">회원명</div></th>	
		
		<th scope="col">
		<div class="wrap">메일아이디</div></th>
		
		<th scope="col">
		<div class="wrap">메일주소</div></th>
		
		<th scope="col">
		<div class="wrap">휴대전화번호</div></th>
		
		<th scope="col">
		<div class="wrap">가입일자</div></th>
		
	</tr>
	</thead>

<tbody>
<!-- items:Collection 객체(List, Map) / var:사용할 변수명 -->
<c:forEach items="${mList}" var="member">
	<tr>
		<td class="no">${member.id}</td>
		<td class="no">${member.password}</td>
		<td class="no">${member.name}</td>
		<td class="no">${member.email}</td>
		<td class="no">${member.email1}</td>
		<td class="no">${member.phone}</td>
		<td class="no"><fmt:formatDate pattern="yyyy-MM-dd" value="${member.regDate}"/></td>

	</tr>
	
</c:forEach>
</tbody>
</table> 

</div>
</div>
<div class="paginate">
<div id="pagdObjNavgation">
<div class="paginate">
<%-- <c:if test="${articlePage.hasArticles()}">
	
			<c:if test="${articlePage.startPage > 5}">
			<a href="list.do?pageNo=${articlePage.startPage - 5}">이전</a>
			</c:if>
			<c:forEach var="pNo" 
					   begin="${articlePage.startPage}" 
					   end="${articlePage.endPage}">
			<a href="list.do?pageNo=${pNo}">${pNo}</a>
			</c:forEach>
			<c:if test="${articlePage.endPage < articlePage.totalPages}">
			<a href="list.do?pageNo=${articlePage.startPage + 5}">다음</a>
			</c:if>
	
</c:if> --%>
</div>
</div>
</div>




</div>
</div>
        <!-- footer -->
        <div id="footer" class="pr_none">
            <div class="footer_cont">
            
                 <!-- 공지사항 -->
      <div class="notice">
      <dl>
     <dt class="label"><a href="/customer/announce/index.htm" title="공지사항">공지사항</a></dt>


     <dd><a href="list2.do" title="서비스 종료 안내" class="mlog">레몬 무료듣기 지급 서비스 종료 안내</a></dd>
   <dd class="date">2021.05.04</dd>
  </dl>
  
         <div class="notice_menu">
           <ul class="fl_right">      
           <li class="menu01"><a href="#"><span>레몬 플레이어</span></a></li>
            <li class="menu02"><a href="#"><span>이용안내</span></a></li>
             <li class="menu03"><a href="#"><span>고객센터</span></a></li>
             <li class="menu04"><a href="#"><span>전체 서비스 보기 <i class="fas fa-angle-right"></i></span></a></li>
                    </ul>
                </div>
    </div>
                    <!-- //공지사항 -->
                    <!-- //공지사항 -->
    <hr style="margin-top:-20px; width:100%;">     
                <ul class="footer_policy clfix">
                    <li class="first_child"><a href="#" title="회사소개 " target="_blank">회사소개</a></li>
                    <li><a href="#" title="이용약관 " target="_blank">이용약관</a></li>
                    <li><a href="#" title="위치기반서비스 이용약관 "
                            target="_blank"><strong>위치기반서비스 이용약관</strong></a></li>
                    <li><a href="#" title="개인정보처리방침 "
                            target="_blank"><strong>개인정보처리방침</strong></a></li>
                    <li><a href="#" title="청소년보호정책" target="_blank">청소년보호정책</a>
                    </li>
                    <li><a href="#"
                            title="제휴/프로모션문의">제휴/프로모션문의</a></li>
                    <li><a href="#" title="이메일주소무단수집거부 ">이메일주소무단수집거부</a></li>
                    <li class="last_child"><a href="//partner.melon.com/partrct/login/web/login_loginProcess.htm?t=s"
                            title="파트너센터" target="_blank">파트너센터</a></li>
                </ul>
               
                <p>
                   
                    <span class="first"><strong>(주)Lemon</strong>&nbsp;&nbsp;과일특별자치도 상큼시 침샘로 242 (발동동)</span>
                    <span>공동대표이사 : 나과일, 달콤해</span>
                    <span>사업자등록번호 : 111-22-43215</span>
                    <span>통신판매업신고번호 : 제 2021-맛난과일-0025호 
                    <a href="#" title="사업자정보확인" class="btn_arrow" target="_blank" style="font-size:11px">사업자정보확인</a></span>
                    <br>
                    <span class="first">문의전화 : 1234-7777 (평일 09:00-18:00, 유료)</span>
                    <span>이메일 : <a href="lemon_hoho@fruit.com"
                            class="btn_footer_mail">lemon_haha@fruit.com</a></span>
                    <span>호스팅서비스사업자 : (주)Lemon</span>
                    <span><a href="#" class="btn_footer_mail" target="_blank" style="font-size:11px">© LEMON
                            Corp.</a></span>
           
                </p>
         

         
            </div>

        </div>
        <!-- //footer -->

<script type="text/javascript">
let rollingData = [
    '1. DEAN <i class="fas fa-arrow-up"> 7</i>',
    '2. 자장가 <i class="fas fa-minus"></i>',
    '3. 드라마 ost <i class="fas fa-arrow-up"> 5</i>',
    '4. 아이유 <i class="fas fa-minus"></i>',
    '5. Eminem <i class="fas fa-arrow-down"> 2</i>',
    '6. 한동근 <i class="fas fa-minus"></i>',
    '7. 오혁  <i class="fas fa-minus"></i>',
    '8. Beyonce <i class="fas fa-minus"></i>',
    '9. 클래식 <i class="fas fa-arrow-down"> 6</i>',
    '10. 서인국   <span class="fas_nono">new</span>'
   
  ]    // 롤링할 데이터를 넣으면 됩니다 갯수 제한 없어요

let timer = 2000 // 롤링되는 주기 입니다 (1000 => 1초)

let first = document.getElementById('first'),
second = document.getElementById('second'),
third = document.getElementById('third')
let move = 2
let dataCnt = 1
let listCnt = 1

//위 선언은 따로 완전히 수정하지 않는 한 조정할 필요는 없습니다.

first.children[0].innerHTML = rollingData[0]

setInterval(() => {
if(move == 2){
first.classList.remove('card_sliding')
first.classList.add('card_sliding_after')

second.classList.remove('card_sliding_after')
second.classList.add('card_sliding')

third.classList.remove('card_sliding_after')
third.classList.remove('card_sliding')

move = 0
} else if (move == 1){
first.classList.remove('card_sliding_after')
first.classList.add('card_sliding')

second.classList.remove('card_sliding_after')
second.classList.remove('card_sliding')

third.classList.remove('card_sliding')
third.classList.add('card_sliding_after')

move = 2
} else if (move == 0) {
first.classList.remove('card_sliding_after')
first.classList.remove('card_sliding')

second.classList.remove('card_sliding')
second.classList.add('card_sliding_after')

third.classList.remove('card_sliding_after')
third.classList.add('card_sliding')

move = 1
}

if(dataCnt < (rollingData.length - 1)) {
document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
dataCnt++
} else if(dataCnt == rollingData.length - 1) {
document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
dataCnt = 0
}

if(listCnt < 2) {
listCnt++
} else if (listCnt == 2) {
listCnt = 0
}

console.log(listCnt)
}, timer);




$(function(){
$('#rolling_box').mouseenter(function(){
$('.hide_box').show();
$('#rolling_box').stop();
});

$('.hide_box').mouseleave(function(){
$('.hide_box').hide();
$('#rolling_box').start();
});
}); 


</script>
</div>
</body>
</html>