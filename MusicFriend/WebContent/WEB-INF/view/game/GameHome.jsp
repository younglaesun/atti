<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
#bgm2{
	width: 0px;
}
#htbtn {
   margin-top: 2%;
   width : 150px;
   height : 150px;
   font-size : 15pt;
   background-image : url("resources/images/gameImg/gs.png");
   background-size : 150px;
   background-position : center; 
   background-repeat: no-repeat;
   color : #000000;
   margin-left: 6%;
   cursor: pointer;
} 
#sebtn {
   margin-left: 19px;   
   width : 150px;
   height : 150px;
   font-size : 15pt;
   background-image : url("resources/images/gameImg/gg.png");
   background-size : 150px;
   background-position : center; 
   background-repeat: no-repeat;
   color : #FFFFFF;
   cursor: pointer;
} 

.popup {
   display: inline-block;
   width: 700px;
   height: 470px;
   background-image : url("resources/images/gameImg/pop.jpg");
   background-size : 910px;
   background-position: center;
   background-repeat:no-repeat;
   position: absolute;
   z-index: 200;
   top: calc(50% - 240px);
   left: calc(50% - 350px);
   border: 8px solid #005000;
}

.bg {
   display: inline-block;
   width: 100%;
   height: 100%;
   border: 0px;
   background-image: url("resources/images/gameImg/bg.png");
   background-repeat: repeat-x;
   background-size: 1300px;
   background-position: center;
   position: absolute;
   z-index: 100;
   
}
.bgg {
   display: inline-block;
   width: 100%;
   height: 100%;
   border: 0px;
   background-image: url("resources/images/gameImg/1.png");
   background-size: 4px;
   background-position: center;
   position: absolute;
   z-index: 50;
   
}


.title {
   margin-left: 15%;
   width: 200px;
   height: 70px;
   
}

.lt2 {
   margin-top: 20%;
   margin-left: 11%;
   font-size: 19pt;
   color : #005000;
}
.lt4 {
   margin-top: 20%;
   margin-left: 7%;
   font-size: 19pt;
   color : #005000;
}
.lt {
   margin-top: 20%;
   font-size: 14pt;
   color : #009000;
}
.lt3 {
   margin-top: 20%;
   font-size: 19pt;
   color : #005000;
}

.rt {
   margin-left: 11%;
   font-size: 14pt;
   color : #005000;
}

</style>
<script type="text/javascript">

function h() {
   alert("\n[게임설명]\n지급되는 자본으로 밭 또는 나무를 설치합니다.\n시간이 지나게 되면 작물 및 열매가 생성됩니다.\n작물 및 열매를 클릭하게되면 돈을 벌게되고,\n돈을 이용해 더 값 비싼 밭 또는 나무를 설치할 수 있습니다.\n돈을 계속 모아 오른쪽의 나를 레벨업 시킬 수 있습니다.\n\n\n[조작법]\n마우스 클릭\n\n\nP.S 울타리 등 구조물을 이용해 농장을 이쁘게 만들어 보아요!\n\n\n");
}

function s() {
   location.href = "game";
}


</script>
</head>
<body>
<div class="bgg"></div>
<div class="bg"></div>
<div class="popup">
<br/>
<b class="lt2">밭</b><b class="lt">도 가꾸고,<b class="lt3"> 나무</b>도 가꾸며 돈을 벌어보자! </b>
<br/>
<b class="lt4">돈</b><b class="lt">을 벌어서 나를 성장시키는</b><b class="lt3"> 인생게임</b>
<br/>
<br/>
<br/>
<img alt="제목" class="title" src="resources/images/gameImg/ti.png">
<br/>
<input type="button" id="htbtn"  onclick="h();" /> 
<input type="button" id="sebtn"  onclick="s();" /> 
</div>
<embed src="resources/images/gameImg/bgm.mp3" loop="infinite" id="bgm2">
</body>
</html>