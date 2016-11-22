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
	$("#loginBtn").on("click", function(){
		if($.trim($("#memId").val()) == ""){//공백제거 후 값이 있는지 확인
			alert("아이디 좀 넣어라");
			$("#memId").focus();//포커스 이동 (커서 깜빡이)
		}else if($.trim($("#memPw").val()) == ""){//공백제거 후 값이 있는지 확인
			alert("비밀번호 좀 넣어라");
			$("#memPw").focus();//포커스 이동 (커서 깜빡이)
		}else{
			var params = $("#loginForm").serialize();
			
			$.ajax({
				type : "post",
				url : "testLoginCheckAjax",
				dataType : "json",
				data : params,
				success : function(result){
					if(result.res == "success"){
						location.href = "test9"
					}else{
						alert("아이디나 비번을 확인해라");
						$("#memId").focus();
					}
				},
				error : function(result){
					alert("ERROR!!");
				}
			});
		}
	});
});
</script>
</head>
<body>
<form action="#" id="loginForm" method ="post">
아이디<input type="text" name="memId" id="memId" />
<br/>
비밀번호<input type="password" name="memPw" id="memPw" />
<br/>
<input type="button" value="로그인" id="loginBtn" />
</form>
</body>
</html>