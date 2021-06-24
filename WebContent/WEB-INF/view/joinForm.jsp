<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 - lemon</title>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/lemon.png" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/join.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
	
<script type="text/javascript" src="../js/jquery.js"></script>
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
<li><a href="join.do" class="login_p" style="color:rgb(252, 220, 41)">회원가입</a></li>
<li><a href="#" class="login_o">아이디 찾기</a></li>
<li><a href="#" class="login_o2">비밀번호 찾기</a></li>
<li><a href="login.do">로그인</a></li>
</ul>
</nav>
</div>
</header>
<article id="genieContent">
<section class="cont_header">
<h2>회원가입</h2>
</section>
<section class="cont_login">
<div id="mArticle">
<form action="join.do" method="post">
<fieldset>

	<strong class="tf_required">아이디</strong>
	<div class="item_input item_confirm">
	<div class="unit">
	<input type="text" name="id" value="${param.id}" placeholder=" 아이디" class="unit">
	</div>
	<!-- <button type="button" class="unit btn_g disabled"
	 onclick="button"style="cursor:pointer;">버튼아님</button>  -->
	</div> 
	<div class="error_m">
	<c:if test="${errors.id}">ID를 입력하세요.</c:if>
	<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>	
</div>

	<strong class="tf_required">비밀번호</strong>
	<div class="item_input item_confirm1">
	<div class="unit">
	<input type="password" name="password" 
	placeholder=" 비밀번호" class="unit"></div></div>
	<div class="error_m">
	<c:if test="${errors.password}">암호를 입력하세요.</c:if>
</div>
<p>
    <div class="item_input item_confirm1">
	<div class="unit">
	
	<input type="password" name="confirmPassword" placeholder=" 비밀번호 확인" class="unit">
	</div></div>
	<div class="error_m">
	<c:if test="${errors.confirmPassword}">비밀번호를 다시 입력하세요.</c:if>
	<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
</div>

<!-- 처음에 param.name은 받은게 없어서 null -->
	<strong class="tf_required">이름</strong>
	<div class="item_input item_confirm1">
	<div class="unit">
	<input type="text" name="name" value="${param.name}" placeholder=" 이름" class="unit">
	</div></div>
	<div class="error_m">
	<c:if test="${errors.name}">이름을 입력하세요.</c:if>
</div>


	<strong class="tf_required">이메일</strong>
	<div class="item_input item_confirm" style="width:220px;">
	<div class="unit" >
	<input type="text" name="email" placeholder=" example" class="unit"  >
	<div class="error_m">
	<c:if test="${errors.email}">메일 주소를 입력하세요</c:if>
	</div>
	</div></div>
	<p>
<span class="item_input item_confirm2" >
	<span class="unit">
	<select name="select_email" onChange="selectEmail(this)" 
	style="width:140px; height:40px; float:right; margin-top:-60px; margin-right:136px; font-size:13px;">
	 <option value="" selected>선택하세요</option> 
	 <option value="@naver.com">@naver.com</option> 
	 <option value="@gmail.com">@gmail.com</option>
	  <option value="@hanmail.com">@hanmail.com</option>
	   <option value="1">직접입력</option> </select>
	 <!--   </span></span> -->

	<input type="text" name="email1" placeholder=" @abcde.com" class="unit" style="width:380px;">
    <div class="error_m"><c:if test="${errors.email1}">메일 주소를 입력하세요</c:if>
</div>
</span></span>

	<strong class="tf_required">휴대폰 번호</strong>
	<div class="item_input item_confirm1">
	<div class="unit">
	<input type="text" name="phone" placeholder=" 010-1234-5678" class="unit"></div></div>
	<div class="error_m">
	<c:if test="${errors.phone}">휴대폰 번호를 입력하세요</c:if>
</div>
<p><br/>
<div class="item_input item_confirm1">
	<div class="unit">
<input type="submit" value="가입하기" class="unit" style="padding:30px 0px; line-height:8px;background-color:gold; color:black; font-size:14px">
</div></div>
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


<script>


function selectEmail(ele){ 
	var $ele = $(ele); 
var $email1 = $('input[name=email1]'); 
// '1'인 경우 직접입력
if($ele.val() == "1"){
	$email1.attr('readonly', false);
	$email1.val('');
	} else { 
	$email1.attr('readonly', true);
	$email1.val($ele.val());
	} 
	}


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