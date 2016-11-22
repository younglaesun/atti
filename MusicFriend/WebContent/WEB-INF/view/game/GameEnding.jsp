<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
<style type="text/css">


#sebtn {
   margin-left: 77%;   
   width : 150px;
   height : 32px;
   background-image : url("resources/images/gameImg/rstart.png");
   background-size : 150px;
   background-position : center; 
   background-repeat: no-repeat;
   color : #FFFFFF;
   cursor: pointer;
   margin-top: 1%;
} 
.video {
   width: 700px;
   margin-top: 1%;
}

.popup {
   display: inline-block;
   width: 700px;
   height: 490px;
   background-size : 720px;
   background-position: center;
   background-repeat:no-repeat;
   position: absolute;
   z-index: 200;
   top: calc(50% - 240px);
   left: calc(50% - 350px);
   border: 8px solid #111111;
}

.bgg {
   display: inline-block;
   width: 100%;
   height: 100%;
   border: 0px;
   background-image:url("resources/images/gameImg/Ending.jpg");
   background-repeat: no-repeat;
   background-size: cover;
   position: absolute;
   z-index: 50;
   
}



.lt {
   margin-top: 20%;
   margin-left: 39%;
   font-size: 23pt;
   color : #DDDDDD;
}


</style>
<script type="text/javascript">

function h() {
   alert("\n[게임설명]\n지급되는 자본으로 밭 또는 나무를 설치합니다.\n시간이 지나게 되면 작물 및 열매가 생성됩니다.\n작물 및 열매를 클릭하게되면 돈을 벌게되고,\n돈을 이용해 더 값 비싼 밭 또는 나무를 설치할 수 있습니다.\n돈을 계속 모아 오른쪽의 나를 레벨업 시킬 수 있습니다.\n\n\n[조작법]\n마우스 클릭\n\n\nP.S 울타리 등 구조물을 이용해 농장을 이쁘게 만들어 보아요!\n\n\n");
}

function s() {
   location.href = "GameHome";
}


</script>
</head>
<body>
<div class="bgg"></div>
<div class="bg"></div>
<div class="popup">
<b class="lt">GameClear </b>
<video class="video" src="resources/images/gameImg/Ending.mp4" autoplay="autoplay" loop="loop"></video>
<br/>
<input type="button" id="sebtn" onclick="s();" /> 
</div>
</body>
</html>