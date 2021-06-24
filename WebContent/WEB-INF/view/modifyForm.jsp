<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<title>고객센터 > 수정하기 - Lemon</title>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/lemon.png" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/head.css">
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/mo_article.css">
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
				
				<h2 class="f_tit mb20">고객지원센터</h2>
<div class="wrap_tab03 type05">
<ul>
	<li class="first_child"><a href="#" class="link_tab">홈</a></li>
	<li class="on"><a href="list2.do" class="link_tab">공지사항</a></li>
	<li><a href="#" class="link_tab">자주묻는질문</a></li>
	<li class="last_child"><a href="list.do" class="link_tab">문의내역</a></li>
</ul>
</div>	

<div class="btable">
<fieldset  style="margin-top:30px; height:500px; border:none">
<form action="modify.do" method="post">
<input type="hidden" name="no" value="${modReq.articleNumber}">
<input type="hidden" name="no" value="${articleData.article.writer.name}">
<table width="100%">
<tr class="date1">
	<td class="n1">번호</td>
	<td class="n2">${modReq.articleNumber}</td>
</tr>

<tr class="title1">
	<td class="n1">제목</td>
	<td class="n2"><input type="text" name="title" value="${modReq.title}"></td>
	<div class="error_m">
	<c:if test="${errors.title}">제목을 입력하세요.</c:if></div>
</tr>

<tr class="name1">
	<td class="n1">작성자</td>
	<td class="n2">${modReq.writer}</td>
</tr>

<tr class="content1">
	<td class="n1">내용</td>
	<td class="bigbox"><textarea name="content">${modReq.content}
	</textarea></td>
	<div class="error_m">
	<c:if test="${errors.content}">내용을 입력하세요.</c:if>
	</div>
	</tr>
<div class="s_head mt24">	
<input type="submit" value="수정하기">
</div>
</table>
</form>
</fieldset>
</div>
</div>




<!-- footer -->
        <div id="footer" class="pr_none">
            <div class="footer_cont">
            
                 <!-- 공지사항 -->
      <div class="notice">
      <dl>
     <dt class="label"><a href="list2.do" title="공지사항">공지사항</a></dt>


     <dd><a href="#" title="서비스 종료 안내" class="mlog">레몬 무료듣기 지급 서비스 종료 안내</a></dd>
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
                    <li class="last_child"><a href="#"
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
</div>
</div>

</body>
</html>