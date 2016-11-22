<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src ="resources/script/jquery/jquery-1.11.0.js" ></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#backBtn").on("click",function(){
		$("#actionForm").attr("action","test5");
		$("#actionForm").submit();
		
	});
	$("#updateBtn").on("click", function(){
		var updateForm = $("#updateForm");
		
		updateForm.ajaxForm(uploadResultCallBack);
		//ajaxForm은 Form 자체가 시작될때 ajax로 구동하겠다, ajax를 실행하고 나서 ()안을 실행하겠다.
		updateForm.submit();
	});
	
	$("#fileDelBtn").on("click", function(){
		$("#showFile").empty();
		$("#testFile").val("");
	});
});
function uploadResultCallBack(data,result){
	
	
	//result : ajax 결과
	if(result == "success"){
		var resData = eval("(" + removePre(data) + ")");
		//eval : javascript bean형태로 만들려고 사용
		if(resData.fileName[0] != null){
			$("#testFile").val(resData.fileName[0]);
			
		}	
		
		var params= $("#updateForm").serialize();
		$.ajax({
			type: "post",
			url : "updateTest",
			dataType : "json",
			data : params,
			success: function(result){
				if(result.res > 0){
					$("#actionForm").attr("action","test5");
					$("#actionForm").submit();
				}else{
					alert("수정 중 문제가 발생했습니다.");
				}
			},
			error : function(result){
				alert("ERROR!!!!");
			}
		});
	}else{
		alert("저장실패");
	}
}

function removePre(data){
	if(data.indexOf("<pre>") > -1){
		//존재 한다면
		var st = data.indexOf(">");
		var ed = data.indexOf("<",st);
		
		return data.substring(st + 1,ed);
	}else{
		return data;
	}
}
</script>
</head>
<body>
<form action="#" id="actionForm" method="post">
	<input type="hidden" name="page" value="${param.page}" >
	<input type="hidden" name="searchText" value ="${param.searchText }">
	<input type="hidden" name="testNo" value ="${con.TEST_NO}">
</form>
<form action="fileUploadAjax" id="updateForm" method="post" enctype="multipart/form-data"> 
	<!-- enctype : 파일(다수의 데이터)을 보낼땐 multipart로 지정 -->
	<input type="hidden" name="testNo"  value="${con.TEST_NO }"/>
	내용<input type="text" name="testCon"  value="${con.TEST_CON }"/>
	<br/>
	파일<input type="file" name="att1" />
	<input type="hidden" name ="testFile" id="testFile" value="${con.TEST_FILE}"/>
	<br/>
	<div id="showFile">
		<c:if test="${!empty con.TEST_FILE }">
			기존파일
			<input type="button" value="파일삭제" id="fileDelBtn"/>
			<br/>
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
		</c:if>
	</div>
</form>
<input type="button" value="수정" id="updateBtn" />
<input type="button" value="뒤로가기" id="backBtn" />
</body>
</html>