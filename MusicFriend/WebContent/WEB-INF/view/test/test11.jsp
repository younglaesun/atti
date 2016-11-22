<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src ="resources/script/jquery/jquery-1.11.0.js" ></script>
<script type="text/javascript" src="resources/script/highcharts/highcharts.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	getData();
});
function getData(){
	$.ajax({
		type : "post",
		url : "test11ajax",
		dataType : "json",
		success : function(result){
			makeChart(result.data);
		},
		error : function(result){
			alert("ERROR!!!");
		}
	});
}
function makeChart(data){
	$('#container').highcharts({
        chart: {
            type: 'column',
            zoomType: 'x'
        },
        colors: ['#5CB3FF', '#D462FF', '#FBB917', '#00B3A2', '#FB558A', 
                 '#2870E3', '#FF8F00', '#B5BF07', '#3F9D00', '#CE3C92'],
        title: {
            text: '파일등록현황'
        },
        subtitle: {
            text: '- 게시판샘플 -'
        },
        xAxis: {
        	title: {
        		text: '집계현황'
        	},
        	categories : ['구분']
            /* labels: {
                formatter: function() {
                    return this.value; // clean, unformatted number for year
                }
            } */
        },
        yAxis: {
            title: {
                text: '게시글수'
            },
            labels: {
                formatter: function() {
                    return this.value +'건';
                }
            }
        },
        tooltip: {
            pointFormat: '{series.name} produced <b>{point.y}건</b>'
        },
        plotOptions: {
            area: {
                pointStart: 1,
                marker: {
                    enabled: false,
                    symbol: 'circle',
                    radius: 2,
                    states: {
                        hover: {
                            enabled: true
                        }
                    }
                }
            }
        },
        series: data
    });
}
</script>
<title>Insert title here</title>
</head>
<body>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto;"></div>
</body>
</html>