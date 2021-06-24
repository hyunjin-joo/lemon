<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>정보 변경 - lemon</title>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/lemon.png" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/bye.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
</head>
<body>
<div id="genieWrap">
<header id="genieHead">
<div class="wrap_head">
<h1>
<a href="index.jsp" class="link_logo">
<img width="80px" height="30px" 
src="<%=request.getContextPath()%>/img/로고.png" class="logo_genie" style="cursor:pointer">
</a>
</h1>
<nav id="genieGnb">
<ul class="list_gnb">
<li><a href="pwchk.do" class="login_p" style="color:rgb(252, 220, 41)">내 정보 변경</a></li>
<li><a href="article/list.do" class="login_o">문의내역</a></li>
<li><a href="changePwd.do" class="login_o2">비밀번호 변경</a></li>
<li><a href="deleteMember.do">회원탈퇴</a></li>
</ul>
</nav>
</div>
</header>
<article id="genieContent">
<section class="cont_header">
<h2>내 정보 변경</h2>
</section>
<section class="cont_bye">
<div id="bArticle">
<form action="pwchk.do" method="post"> 
<fieldset style="margin-bottom:20px">
<p>
<strong class="tf_required">아이디</strong>
	<div class="unit">
	<input type="text" name="id" value="${param.id}">
	</div>
	<div class="error_m">
	<c:if test="${errors.id}">ID를 입력하세요.</c:if>
	</div>
	


<p>
	<strong class="tf_required">비밀번호</strong>
	<div class="unit">
	<input type="password" name="password">
	</div>
		<div class="error_m">
		<c:if test="${errors.password}">비밀번호를 입력하세요.</c:if>
	</div>	
<p>

<div class="del">
<input type="submit" value="확인하기">

</div>
</fieldset>
</form>
</div>
</section>
</article>



<footer id="genieFooter" class="footer_comm">
    <div class="service_info">
        <a href="#" class="link_info" target="_blank">이용약관</a>
        |<a href="#" class="link_info" target="_blank">개인정보처리방침</a>
        |<a href="#" class="link_info" onclick="window.open('//www.genie.co.kr/guide/emailNotCollect', 'EmailNotCollect', 'width=400, height=200'); return false;">이메일주소무단수집거부</a>
        |<a href="#" class="link_info" target="_blank">고객센터</a>
    </div>
    <small class="txt_copyright">Copyright © <a href="#" class="link_genie">LEMON MUSIC Corp.</a>
        All rights reserved.
    </small>
</footer>
</div>
</body>
</html>