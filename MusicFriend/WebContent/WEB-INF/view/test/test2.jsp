<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src ="resources/script/jquery/jquery-1.11.0.js" ></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#listBtn").on("click",function(){
		$("#actionForm").attr("action","test4");
		$("#actionForm").submit();
		
	});
});
</script>
</head>
<body>
<form action="#" id="actionForm" method="post">
	<input type="hidden" name="page" value="${param.page}" >
	<input type="hidden" name="searchText" value ="${param.searchText }">
	<input type="hidden" name="testNo" value="${param.testNo }" >
</form>
<input type="button" value="목록" id="listBtn" />
<table border="1">
	<tr>
		<th>NO</th>
		<td>${con.NO}</td>
	</tr>
	<tr>
		<th>NAME</th>
		<td>${con.NAME}</td>
	</tr>
	<tr>
		<th>ACCOUNT</th>
		<td>${con.ACCOUNT}</td>
	</tr>
	<tr>
		<th>JOINDT</th>
		<td>${con.JOINDT}</td>
	</tr>
	
</table>
</body>
</html>