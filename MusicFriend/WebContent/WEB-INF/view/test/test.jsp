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
	$("#sendBtn").on("click", function(){
		$("#actionForm").submit();
	});
	
	$("#ajaxBtn").on("click", function(){
		var params = $("#actionForm").serialize();
		//serialize() : 데이터를 전송하기 쉽게 한줄로 정리하여 놓은 방식
		
		$.ajax({
			type : "post",
			url : "ajaxTest",
			dataType : "json",
			data : params,
			success : function(result) {
				alert(result.sss);
			},
			error : function(result){
				alert("error!!");
			}
		});
	});
	
	$("#getBtn").on("click", function(){
		var params = $("#guguForm").serialize();
		
		$.ajax({
			type : "post",
			url : "ajaxGugu",
			dataType : "json",
			data : params,
			success : function(result){
				alert(result.gugu);
			},
			error : function(result){
				alert("error!!");
			}
		});
	});
});
</script>
</head>
<body>
<img alt="고양이" src="resources/images/kitty.png" />
<form action="test2" id="actionForm" method="post">
	<input type="text" name ="send" />
	<input type="button" value="전송" id="sendBtn" />
</form>
	<input type="button" value="ajax" id="ajaxBtn" />
<form action="#" id="guguForm" method="post">
	<input type="text" name="gugu">
	<input type="button" value="gugu" id="getBtn" />
</form>
</body>
</html>
