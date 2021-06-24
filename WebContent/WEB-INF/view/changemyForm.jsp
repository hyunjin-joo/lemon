<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<title>내정보 변경 - lemon</title>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/lemon.png" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/head.css">
			<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/change.css">
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/foot.css">
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
<li><a href="pwchk.do" style="color:rgb(252, 220, 41)">내 정보 변경</a></li>
<li><a href="article/list.do" class="login_o">문의내역</a></li>
<li><a href="changePwd.do" class="login_o2" >비밀번호 변경</a></li>
<li><a href="deleteMember.do" class="login_p" >회원탈퇴</a></li>
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
<form action="changeMy.do" method="post">
<fieldset style="margin-bottom:20px">
<p>
	<strong class="tf_required">이름</strong>
	<div class="item_input item_confirm1">
	<div class="unit">
	<input type="text" name="name" value="${param.name}" placeholder="변경할 이름" class="unit">
	</div>
	</div>
	<div class="error_m">
	<c:if test="${errors.name}">이름을 입력하세요.</c:if>
</div>	


<p>
	<strong class="tf_required">이메일</strong>
	<div class="item_input item_confirm" style="width:220px;">
	<div class="unit" >
	<input type="text" name="email" placeholder=" example" class="unit"  >
	<div class="error_m">
	<c:if test="${errors.email}">메일 주소를 입력하세요</c:if>
	</div>
	</div></div>
	<br/>
<span class="item_input item_confirm2" >
	<span class="unit">
	<select name="select_email" onChange="selectEmail(this)" 
	style="width:140px; height:40px; float:right; margin-top:-65px; margin-right:65px;">
	 <option value="" selected>선택하세요</option> 
	 <option value="@naver.com">@naver.com</option> 
	 <option value="@gmail.com">@gmail.com</option>
	  <option value="@hanmail.com">@hanmail.com</option>
	   <option value="1">직접입력</option> </select>
	 <!--   </span></span> -->

	<input type="text" name="email1" placeholder=" @abcde.com" class="unit" style="width:380px;">
    <c:if test="${errors.email1}">메일 주소를 입력하세요</c:if>
</span></span>
<p>
	<strong class="tf_required">휴대폰 번호</strong>
	<div class="item_input item_confirm1">
	<div class="unit">
	<input type="text" name="phone" placeholder=" 010-1234-5678" class="unit"></div></div>
	<div class="error_m">
	<c:if test="${errors.phone}">휴대폰 번호를 입력하세요</c:if>
</div>
<p><br/>

	
	
	
<%-- 	<br/><input type="email" name="newEmail">
	<c:if test="${errors.newEmail}">이메일을 수정하세요</c:if>
	<br/><input type="text" name="newPhone">
	<c:if test="${errors.newPhone}">핸드폰 번호를 수정하세요</c:if> --%>
<div class="del">
<input type="submit" value="변경하기">
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
        |<a href="#" class="link_info">이메일주소무단수집거부</a>
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