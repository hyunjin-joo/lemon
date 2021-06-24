<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>가입 완료</title>
</head>
<body>
<script>
alert("${param.name}님, 회원 가입에 성공했습니다.");
window.location.href='index.jsp';
</script>

<%-- <!-- 본인이 입력한 이름값으로 나옴 -->
${param.name}님, 회원 가입에 성공했습니다.
<a href="index.jsp">처음으로</a> --%>
<br/>
</body>
</html>