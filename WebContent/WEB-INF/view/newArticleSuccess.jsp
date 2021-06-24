<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 등록</title>
</head>
<body>

<script>
alert("문의 내용이 성공적으로 등록되었습니다");
window.location.href='list.do';
</script>
<%-- 게시글을 등록했습니다.
<br>
${ctxPath = pageContext.request.contextPath ; ''}
<a href="${ctxPath}/article/list.do">[게시글목록보기]</a>
<a href="${ctxPath}/article/read.do?no=${newArticleNo}">[게시글내용보기]</a> --%>
</body>
</html>