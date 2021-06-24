<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>로그인 - lemon</title>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/lemon.png" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/loginform.css">
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
<li><a href="join.do">회원가입</a></li>
<li><a href="#" class="login_o">아이디 찾기</a></li>
<li><a href="#" class="login_o2">비밀번호 찾기</a></li>
<li><a href="login.do" class="login_p" style="color:rgb(252, 220, 41)" >로그인</a></li>
</ul>
</nav>
</div>
</header>
<article id="genieContent">
<section class="cont_header">
<h2>로그인</h2>
</section>
<section class="cont_login">
<div id="mArticle" class=wrap_signin>
<form action="login.do" method=post>
<c:if test="${errors.idOrPwNotMatch}">
<script>
alert("아이디와 비밀번호가 일치하지 않습니다");
</script>
</c:if>
<div class="loginbox">

    <br/><input type="text" name="id" value="${param.id}" placeholder=" 아이디">
	<div class="error"><c:if test="${errors.id}"> ID를 입력하세요.</c:if></div>


<br/>
	<input type="password" name="password" placeholder=" 비밀번호">
	<div class="error"><c:if test="${errors.password}"> 비밀번호를 입력하세요.</c:if></div>
<br/>
<div class="check">
<input type="checkbox"> 아이디 저장하기</div>
<br /><input type="submit" value="로그인" style="background-color:gold; border:none; cursor:pointer">
</div>

<div class="img"><img width="300px" height="355px"
src="<%=request.getContextPath()%>/img/right.png"  style="cursor:pointer"></div>
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

<script type="text/javascript">

$(function(){
	$('.login_p').click(function(){
			$('.login_o').css("color","black");
			$('.login_p').css("color","rgb(252, 220, 41)");	
			
	});	
});
 
 $(function(){
		$('.login_o').click(function(){
				$('.login_o').css("color","rgb(252, 220, 41)");
				$('.login_p').css("color","black");
				$('.login_o2').css("color","black");
				
		});	
	});


 $(function(){
		$('.login_o2').click(function(){
				$('.login_o2').css("color","rgb(252, 220, 41)");
				$('.login_p').css("color","black");	
				$('.login_o').css("color","black");
		});	
	});


</script>




</div>
</body>
</html>