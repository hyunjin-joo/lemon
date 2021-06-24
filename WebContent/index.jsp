<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>

<%
	request.setCharacterEncoding("utf8");
%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<title>Lemon : : 음악이 톡톡 튀는 순간</title>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/lemon.png" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/head.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/con1.css">
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/con2.css">
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/foot.css">
<!-- <script type="text/javascript" src="../js/jquery.js"></script> -->
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
								<li class="last_child"><a href="article/list2.do"><span>공지사항</span></a></li>
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

					<div class="new_album">
						<h2>
							<a href="#" title="최신 앨범"
								class="title_link mlog">최신앨범</a>
						</h2>
						<div class="section_na">
							<ul class="new_album_cate">
<li class="on nth1">
<a href="#" class="mlog" title="전체 최신앨범 보기">전체</a></li>
<li class="nth2"><a href="#" class="mlog" title="가요 최신앨범 보기">국내</a>
</li>
<li class="nth3"><a href="#" class="mlog"title="POP 최신앨범 보기">해외</a>
</li>

</ul>
<div>
<div class="list_wrap">

<ul class="sub_list" style="display:block">
<li>
<dl>

<dd class="img">
													
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/06/892/10606892_20210513100549_500.jpg?cc2dd90c5d2518ffe263c795a0d22f3d/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>													
</dd>																																							
</dl>															
</li>


<li>
<dl>

<dd class="img">
													
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/07/217/10607217_20210513141109_500.jpg?51f6ff7dfaf3f98f90295b41add293dc/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>													
</dd>																																								
</dl>															
</li>																
															

<li>
<dl>
<dd class="img">
													
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/06/803/10606803_20210512184903_500.jpg?e82dbbd80b0618b8fd7fe24f60673cb8/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>											
</dd>																												
</dl>															
</li>													
											
										


<li>
<dl>
<dd class="img">
												
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/07/270/10607270_20210513143611_500.jpg?641062dd470ce87a5585e36977d6877c/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>												
</dd>																																						
</dl>															
</li>

																							
<li>
<dl>
<dd class="img">
												
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/07/034/10607034_20210513113839_500.jpg?025cd8c538cb75cbac891f43da0039a5/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>												
</dd>																																								
</dl>															
</li>


	
<li>
<dl>
<dd class="img">
												
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/06/905/10606905_20210513103106_500.jpg?b8868947d878501bb309fb039900694e/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>												
</dd>																																																			
</dl>															
</li>

<li>
<dl>
<dd class="img">
													
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/06/775/10606775_20210512183045_500.jpg?87ff2ab3027eb1dab5317421ae67fd1c/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>												
</dd>			
</dl>															
</li>

<li>
<dl>
<dd class="img">
													
<span class="thum"> <img onerror="WEBPOCIMG.defaultAlbumImg(this);" 
width="156"height="156"src="https://cdnimg.melon.co.kr/cm2/album/images/106/06/757/10606757_20210512181449_500.jpg?ed44103f8910b1b42f579173ae5bf07b/melon/resize/156/quality/80/optimize"
alt=""> 
<span class="bg_album_frame"></span> 
</span>													
</dd>				
</dl>															
</li>				
</ul>

<div class="empty_img">
<a href="#" class="img1" >
<img width="77px"; height="77px"
src="<%=request.getContextPath()%>/img/앨범1.jpg" style="cursor:pointer"></a>
<a href="#" class="img2" >
<img width="77px"; height="76px"
src="<%=request.getContextPath()%>/img/앨범2.jpg" style="cursor:pointer"></a>
<a href="#" class="img3" >
<img width="77px"; height="76px"
src="<%=request.getContextPath()%>/img/앨범3.jpg" style="cursor:pointer"></a>
<a href="#" class="img4" >
<img width="77px"; height="77px"
src="<%=request.getContextPath()%>/img/앨범4.jpg" style="cursor:pointer"></a>
</div>
</div>
</div>
</div>
</div>


								<%-- <c:if test="${! empty authUser}">
 <%
            // 관리자 로그인
            if(getAttribute("id").equals("admin")){ 
        %>
            <a href="#" style="margin-left:15px">회원정보</a>
        <%    }    %> 

								
	${authUser.name}님, 안녕하세요.
	<a href="logout.do">[로그아웃하기]</a>
	<a href="changePwd.do">[암호변경하기]</a>
</c:if>
<c:if test="${empty authUser}">
	<a href="join.do">[회원가입하기]</a>
	<a href="login.do">[로그인하기]</a>
</c:if>  이거 써도 상관없음--%>
<div class="id_wrap mt24">
<u:isLogin>
<!-- session 에 붙어있는 authUser의 이름 -->
<div class="logout1">
<div class="name">
<b>${authUser.name}</b>님, 안녕하세요.
<%-- <c:choose>
<c:when test="${authUser.mid eq'admin1234'}">
<b>${authUser.mname}</b>님, 안녕하세요.
</c:when>

<c:otherwise>
<b>${authUser.name}</b>님, 안녕하세요.
</c:otherwise>
</c:choose> --%>
</div>
<div class="logout">
<a href="logout.do">로그아웃하기</a>
</div>
<div class="other" >
<!-- authUser->loginhandler(로그인 성공 - 세션에 속성 authUser와 속성값 회원정보를 붙여준다.) -->
<c:choose>

<c:when test="${authUser.id eq'admin'}"> 
<%-- <c:when test="${authUser.mid eq'admin1234'}"> --%>
<a href="listMember.do" 
style="margin-left:90px; padding:2px 10px;margin-top:6px; 
border:1px solid blue;font-size:15px; color:blue;">회원리스트</a>
</c:when>
<c:otherwise>
<a href="pwchk.do" style="margin-left:15px">내 정보변경 |</a>
<a href="article/list.do">문의내역</a>
<span class="bye">
<a href="deleteMember.do">회원탈퇴</a>
</span>	
</c:otherwise>
</c:choose>
</div>

</div>
</u:isLogin>
<u:notLogin>
<!-- a 태그로 들어간거는 get으로 한것 -->
<div class="login1">
<div class="name" style="color:darkgray; font-size:11px; margin-bottom:2px; margin-top:-2px;">
레몬을 간편하고 안전하게 이용하세요
</div>
 <div class="login">
	<a href="login.do" >로그인</a>
	</div>
	<div class="idpwse">
	<a href="#">아이디 | 비밀번호 찾기</a>
	</div>
	<span class="join">
	<a href="join.do">회원가입</a>
	</span>
	</div>

	</u:notLogin>
	<br />
<div class="promotion_wrap">
<ul style="width: 280px">
<li class="d_item">
<a href="#"><img width="280px" height="184px" src="<%=request.getContextPath()%>/img/광고1.jpg"></a>
</li></ul>
</div>								
</div>

<div class="hot_issue">
<h2>
<span class="title_link">인기 컨텐츠</span>
<span class="txt_intro">지금 이슈가 되는 인기 컨텐츠들 입니다</span>
</h2>
<hr>
<ul class="sub_list">
	<li class="issue_list04">
		<dl class="ml0">
		<dd class="mov_area">
		<a href="https://www.melon.com/video/detail2.htm?mvId=50236417&amp;menuId=60010101"
		title="'무대천재' 원어스 컴백" class="mlog">
		<img width="223" height="148"
		src="https://cdnimg.melon.co.kr/svc/images/main/imgUrl20210512115345.jpg/melon/quality/80"alt="">
		<span class="bg_album_frame"></span>
		</a>
		</dd>
		
		
		<dt>
		 <a href="#"
		 title="'무대천재' 원어스 컴백" class="mlog">
<span class="title">'무대천재' 원어스 컴백</span>
<span class="ellipsis">강렬한 퍼포먼스 'BLACK MIRROR'</span>		 
		 </a>
		</dt>
		
		
		<dd class="view_no">
		 <span><span class="bar">
		 <a href="#" title="레몬">레몬TV</a>
		  </span><span class="inquiry">조회 1,409</span></span>
		</dd>
		</dl>
		
		
		<dl>
		<dd class="mov_area">
		<a href=#"
             title="둘째이모 김다비 미니 인터뷰" class="mlog">
        <img width="223" height="148" src="https://cdnimg.melon.co.kr/svc/images/main/imgUrl20210512115554.jpg/melon/quality/80"
        lt="">

       <span class="bg_album_frame"></span>
      </a>
		</dd>
		<dt>
		 <a href="#"title="둘째이모 김다비 미니 인터뷰" class="mlog">
          <span class="title">둘째이모 김다비 미니 인터뷰</span>
      <span class="ellipsis">'오르자 (Prod. 알고보니 혼수상태)'</span>
      </a>
		</dt>
		<dd class="view_no">
		<span><span class="bar">
		<a href="# title="레몬매거진">레몬매거진</a>
      </span><span class="inquiry">조회 10,661</span></span>
		</dd>
		</dl>
		
		
		<dl>
		<dd class="mov_area">
        <a href="#" title="오마이걸 미니 8집 컴백" class="mlog">
         <img width="223" height="148"src="https://cdnimg.melon.co.kr/svc/images/main/imgUrl20210512030640.jpg/melon/quality/80"
        alt="">
          <span class="bg_album_frame"></span>
        </a>
		</dd>
		
		<dt>
		<a href="#" title="오마이걸 미니 8집 컴백" class="mlog">
       <span class="title">오마이걸 미니 8집 컴백</span>
      <span class="ellipsis">청량감 넘치는 ‘DUN DUN DANCE’</span>
   </a>	
		</dt>
		
		<dd class="view_no">
		 <span><span class="bar">
		 <a href="#"title="레몬">레몬TV</a>
        </span>
       <span class="inquiry">조회 18,96
</span>
</span>
		</dd>
		</dl>
		
		 <dl class="ml0">
		 <dd class="mov_area">
         <a href="#" title="우린 아는 사이였을 지도" class="mlog">
       <img width="223" height="148"src="https://cdnimg.melon.co.kr/svc/images/main/imgUrl20210512030756.jpg/melon/quality/80"
      alt="">
      <span class="bg_album_frame"></span>
        </a>
     </dd>
   <dt>
   <a href="#" title="우린 아는 사이였을 지도" class="mlog">
 <span class="title">우린 아는 사이였을 지도</span>
  <span class="ellipsis">에릭 남과 Sarah Barrios가 멜론에게!</span>
   </a>
    </dt>
     <dd class="view_no">
     <span><span class="bar">
 <a href="#" title="레몬">레몬TV</a>
</span><span class="inquiry">조회 50</span></span>
		</dd>
		</dl>
		
		
		
		
		<dl>
		<dd class="mov_area">
		<a href="#"  title="우주소녀 두 번째 유닛! 시크한 매력" class="mlog">
		 <img width="223" height="148"src="https://cdnimg.melon.co.kr/svc/images/main/imgUrl20210513013006.jpg/melon/quality/80"
		 alt="">
		 <span class="bg_album_frame"></span>
		</a>
		</dd>
		<dt>
		<a href="#" title="우주소녀 두 번째 유닛! 시크한 매력" class="mlog">
		<span class="title">우주소녀 두 번째 유닛! 시크한 매력</span>
		<span class="ellipsis">우주소녀 더 블랙 'Easy'</span>
		</a>
		</dt>
		<dd class="view_no">
		 <span><span class="bar">
		 <a href="#" title="레몬">레몬TV</a>
		  </span><span class="inquiry">조회 2,489</span></span>
		</dd>
		</dl>
		
			
<dl>
  <dd class="mov_area">
          <a href="#"title="이석훈X로코베리 달달한 듀엣" class="mlog">
    <img width="223" height="148" src="https://cdnimg.melon.co.kr/svc/images/main/imgUrl20210513013132.jpg/melon/quality/80"
     alt="">
<span class="bg_album_frame"></span>
    </a>
  </dd>
   <dt>
    <a href="#" title="이석훈X로코베리 달달한 듀엣" class="mlog">
    <span class="title">이석훈X로코베리 달달한 듀엣</span>
  <span class="ellipsis">그대를 사랑하는 10가지 이유 리메이크</span>
 </a>
 </dt>
  <dd class="view_no">                 
   <span><span class="bar">
        <a href="#"title="레몬">레몬TV</a>
   </span><span class="inquiry">조회 2,041</span></span>
        </dd>
      </dl>
        </li>
        </ul>
<div class="wrap_page">
<div class="page">
<span class="page_num">
<span class="none">2</span>
<strong>1</strong>
/
<span class="none">2</span>
<span>2</span>
</span>
<span class="wrap_btn">
 <a class="btn btn_pre mlog_without_page_change disabled" title="이전"
     href="#"><span class="odd_span"><i class="fas fa-chevron-left"></i>이전</span></a>
 <a class="btn btn_next mlog_without_page_change" title="다음" href="#">
 <span class="odd_span"><i class="fas fa-chevron-right"></i>다음</span></a>
</span>
</div>
</div>
</div>
<div class="chart">
<h2>
<a href="#" class="title_link mlog">
레몬차트<img width="85px" height="29px"
							src="<%=request.getContextPath()%>/img/차트.jpg" style="margin-left:-10px; margin-top:-2px">
</a>
<div class="real_time">
<span class="txt_intro">
2021 . 05 . 25&nbsp;
<strong> 23:00</strong>
기준
</span>
</div>
</h2>

<div class="wrap_chart_tab">
<ul>
<li class="nth1 on">
<a href="#" title="24Hits" class="d_link tab_link realtime" style="padding-left:2px; border-right:1px solid #eeeeee;height:27px" >
<span style="vertical-align:top; line-height:16px; margin-left:-12px; font-weight:bold; color:gold;">&nbsp;인기차트</span>
</a>


<a href="#" class="tab_link2" style="padding-left:13px;  font-weight:bold; color:darkgray;">
<span>POP</span>
</a>
<a href="#" class="tab_link3" style="padding-left:15px; font-weight:bold; color:darkgray;"><span>&nbsp;아티스트</span>
</a>
<!-- <div class="list_wrap typeRealtime">
<span class="txt_intro">
2021.05.25
<strong>23:00</strong>
기준
</span>
</div> -->
 </li>
 </ul>
 
<ul>
<li class="rank_item">
<div class="thumb">
<a href="#" class="drive">운전만해 (We Ride)</a>
<a href="#" class="drive2">브레이브걸스</a>
 </div>
 </li>
 
 <li class="odd">
 <div class="thumb">
 <a href="#" class="drive">Timeless</a>
 <a href="#" class="drive2" style="padding-left:128px;">SG 워너비</a>
 </div>
 </li>
 
 <li class="rank_item">
<div class="thumb">
<a href="#" class="drive">Celebrity</a>
<a href="#" class="drive2" style="padding-left:127px;">아이유</a>
 </div>
 </li>
 
  <li class="odd">
<div class="thumb">
<a href="#" class="drive">Dynamite</a>
<a href="#" class="drive2"style="padding-left:122px;">방탄소년단</a>
 </div>
 </li>
 
 
  <li class="rank_item">
<div class="thumb">
<a href="#" class="drive">상상더하기</a>
<a href="#" class="drive2"style="padding-left:111px;">라붐(LABOUM)</a>
 </div>
 </li>
 
  <li class="odd">
<div class="thumb">
<a href="#" class="drive">라일락</a>
<a href="#" class="drive2" style="padding-left:135px;">아이유</a>
 </div>
 </li>
 
  
  <li class="rank_item">
<div class="thumb">
<a href="#" class="drive">롤린 (Rollin')</a>
<a href="#" class="drive2"style="padding-left:104px;">브레이브걸스</a>
 </div>
 </li>
 
  <li class="odd">
<div class="thumb">
<a href="#" class="drive">Dun Dun Dance</a>
<a href="#" class="drive2"style="padding-left:86px;">오마이걸</a>
 </div>
 </li>
 
  <li class="rank_item" style="border-bottom:none">
<div class="thumb">
<a href="#" class="drive1">더보기<i class="fas fa-angle-right"></i></a>
 </div>
 </li>
 </ul>
</div>
</div>
               <!-- 공지사항 -->
      <div class="notice">
      <dl>
     <dt class="label"><a href="/pro_board/article/list2.do" title="공지사항">공지사항</a></dt>


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
   </div>

                <!-- //contents -->
            </div>
        </div>
<hr style="padding-bottom:50px">
        <!-- footer -->
        <div id="footer" class="pr_none">

            

            <div class="footer_cont">
       
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
   



								<script>
								

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
							
</body>
</html>