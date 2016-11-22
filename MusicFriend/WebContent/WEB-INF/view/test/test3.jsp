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
	refreshList();
	
	 $("#searchBtn").on("click", function(){
		 $("input[name='searchText']").val($("#searchText").val());
		 $("input[name='page']").val("1");
	 
		 refreshList();
	 });
	 $("#insertBtn").on("click", function(){
		$("#actionForm").attr("action", "test7");
		$("#actionForm").submit();
		
	 });
	 $("#pagingArea").on("click", "span", function(){
		 
		 $("input[name='page']").val($(this).attr("name"));
	 	 
	     refreshList();	 
	 });
	 $("#tb").on("click", "tr", function(){
		$("input[name='testNo']").val($(this).attr("name"));
		$("#actionForm").attr("action","test5");
		$("#actionForm").submit();
	 });
}); 


function refreshList(){ //검색, 페이징
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "refreshTest",
		dataType : "json",
		data : params,
		success : function(result){
			var html = "";
			for(var i =0;i < result.list.length; i++) {
				html += "<tr name ='"+ result.list[i].TEST_NO + "'>";
				html += "<td>"+ result.list[i].TEST_NO + "</td>";
				html += "<td>"+ result.list[i].TEST_CON + "</td>";			
				html += "</tr>";
			}
			$("#tb").html(html);
			
			html = "";
			
			html += "<span name ='1'>처음</span>";
			if($("input[name='page']").val() == 1){
				html += "<span name='1'>이전</span>";
			}else{
				html += "<span name='"+ ($("input[name='page']").val() -1) +"'>이전</span>";
				
			}
			
			for(var i = result.pb.startPcount ; i<= result.pb.endPcount; i++){
				if(i == $("input[name='page']").val()){
					html += "<span name='" + i + "'><b>" + i +"</b></span>";
				}else{
					html += "<span name='" + i + "'>" + i + "</span>";
				}
			}
			if($("input[name='page']").val() == result.pb.maxPcount){
				html += "<span name='" + result.pb.maxPcount + "'>다음</span>";				
			}else{
				html += "<span name='" + ($("input[name='page']").val() * 1 + 1) + "'>다음</span>";
				
			}
			html += "<span name='" + result.pb.maxPcount + "'>마지막</span>";
			
			$("#pagingArea").html(html);
		},
		error : function(result){
			alert("error!!!");
		}
	});
}
</script>
</head>
<body>
<form action="#" id="actionForm" method="post"> <!-- 데이터를 불러오는 jsp이기 때문에 자신을 불러온다 -->
	<c:choose>
		<c:when test="${empty param.page}">
			<input type="hidden" name="page" value="1" />
			
		</c:when>
		<c:otherwise>
			<input type="hidden" name="page" value="${param.page}" />
			
		</c:otherwise>
	</c:choose>
	<input type="hidden" name="searchText"  value="${param.searchText}" />
	<input type="hidden" name="testNo" />
</form>
<input type="text" id="searchText"value="${param.searchText}" />
<input type="button" value="검색" id="searchBtn" />
<input type="button" value="추가"	 id="insertBtn" />
<table border="1">
	<thead>
		<tr>
			<th>번호</th>
			<th>내용</th>
		</tr>
	</thead>
	<tbody id="tb"></tbody>
</table>
<div id="pagingArea"></div>
</body>
</html>