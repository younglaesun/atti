<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#logoutBtn").on("click", function(){
		location.href="testLogout";
	});
});
</script>
</head>
<body>
${sMemNm}님 어서오세요.
<input type="button" value="로그아웃" id="logoutBtn" />
</body>
</html>