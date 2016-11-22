<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src ="resources/script/jquery/jquery-1.11.0.js" ></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#listBtn").on("click",function(){
		$("#actionForm").attr("action","test3");
		$("#actionForm").submit();
		
	});
	$("#updateBtn").on("click", function(){
		$("#actionForm").attr("action", "test10");
		$("#actionForm").submit();
	});
	$("#deleteBtn").on("click", function(){
		if(confirm("지울래??")){
			var params = $("#actionForm").serialize();
			
			$.ajax({
				type : "post",
				url : "deleteTest",
				dataType : "json",
				data : params,
				success : function(result){
					if(result.res > 0){
						location.href = "test3";
					}else{
						alert("삭제가 안된다.")
					}
				},error : function(result){
					alert("ERROR!!!");
				}
			});
		}
		
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
<input type="button" value="수정" id="updateBtn" />
<input type="button" value="삭제" id="deleteBtn" />
<table border="1">
	<tr>
		<th>번호</th>
		<td>${con.TEST_NO}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${con.TEST_CON}</td>
	</tr>
	<c:if test="${!empty con.TEST_FILE }">
		<tr>
			<th>파일</th>
			<td>
				<c:choose>
					<c:when test="${ con.FILE_EXT eq 'jpg' ||
									 con.FILE_EXT eq 'gif' ||
									 con.FILE_EXT eq 'png' }">
					<img alt="${con.TEST_FILE }" src="resources/upload/${con.TEST_FILE }" />
					</c:when>
					<c:otherwise>
						<a href="resources/upload/${con.TEST_FILE }" download>${con.TEST_FILE }</a>
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</c:if>
</table>
</body>
</html>