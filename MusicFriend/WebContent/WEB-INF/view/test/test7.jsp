<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src ="resources/script/jquery/jquery-1.11.0.js" ></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#listBtn").on("click",function(){
		$("#actionForm").attr("action","test3");
		$("#actionForm").submit();
		
	});
	$("#saveBtn").on("click", function(){
		var insertForm = $("#insertForm");
		
		insertForm.ajaxForm(uploadResultCallBack);
		//ajaxForm은 Form 자체가 시작될때 ajax로 구동하겠다, ajax를 실행하고 나서 ()안을 실행하겠다.
		insertForm.submit();
		
		
		
		
	});
});
function uploadResultCallBack(data,result){
	//result : ajax 결과
	if(result == "success"){
		var resData = eval("(" + removePre(data) + ")");
		//eval : javascript bean형태로 만들려고 사용
		
		$("#textFile").val(resData.fileName[0]);
		
		var params= $("#insertForm").serialize();
		$.ajax({
			type: "post",
			url : "insertTest",
			dataType : "json",
			data : params,
			success: function(result){
				if(result.res == "true"){
					location.href = "test3";
				}else{
					alert("저장 중 문제가 발생했습니다.");
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
</form>
<input type="button" value="목록" id="listBtn" />
<form action="fileUploadAjax" id="insertForm" method="post" enctype="multipart/form-data"> 
	<!-- enctype : 파일(다수의 데이터)을 보낼땐 multipart로 지정 -->
	내용<input type="text" name="textCon" />
	<br/>
	파일<input type="file" name="att1" />
	<input type="hidden" name ="textFile" id="textFile" />
</form>
<input type="button" value="저장" id="saveBtn" />
</body>
</html>