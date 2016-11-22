<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
#bgm {
	width:0px;
}

body {
	font-size: 0px;
	margin: 0;
}

#game {
	display: inline-block;
	vertical-align: top;
	margin: 0 auto;
	width: 1502px;
}

tr {
	height: 60px;
	min-height: 60px;
}
td {
	width: 60px;
	padding: 0;
	background-color: #FFFFFF;
	font-size: 0pt;
	border: 0px solid #FFFFFF;
	min-width: 60px;
	background-repeat: no-repeat;
	background-size: 100%;
	background-image: url('resources/images/gameImg/ground.png');
	z-index: 99;
}

#main {
	width: 95%;
	height: 937px;
	background-image: url('resources/images/gameImg/main.png');
	background-size: cover;
	min-width: 70%;
	min-height: 932px;
	background-repeat: no-repeat;
}

#mainbg {
	width: 1500px;
	height: 1000px;
	min-width: 1500px;
	min-height:
}

#buildTools input[type='button'] {
	font-size: 0;
	vertical-align: top;
}

vertical-align
:
 
top
;


}
#img {
	width: 60px;
	height: 60px;
}

#tb {
	cursor: pointer;
}

#ground {
	display: inline-block;
	background-image: url('resources/images/gameImg/ground.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	font-size: 0;
}

#ground2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/g2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#water {
	display: inline-block;
	background-image: url('resources/images/gameImg/r1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#water1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/r2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#water2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/r3.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#water3 {
	display: inline-block;
	background-image: url('resources/images/gameImg/r4.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#water4 {
	display: inline-block;
	background-image: url('resources/images/gameImg/r5.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#water5 {
	display: inline-block;
	background-image: url('resources/images/gameImg/r6.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#water6 {
	display: inline-block;
	background-image: url('resources/images/gameImg/r7.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#tree1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/t1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#tree2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/t2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#bridge1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/d2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#bridge2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/d4.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#bridge3 {
	display: inline-block;
	background-image: url('resources/images/gameImg/d6.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#bridge4 {
	display: inline-block;
	background-image: url('resources/images/gameImg/d7.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#house1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/h1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#house2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/h2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari3 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u3.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari4 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u4.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari5 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u5.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari6 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u6.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari7 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u7.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari8 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u8.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari9 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u9.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari10 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u10.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari11 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u11.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari12 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u12.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#utari13 {
	display: inline-block;
	background-image: url('resources/images/gameImg/u13.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#umul1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/w1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#umul2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/w2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#character {
	display: inline-block;
	background-image: url('resources/images/gameImg/c.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#cow {
	display: inline-block;
	background-image: url('resources/images/gameImg/cw.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#chi {
	display: inline-block;
	background-image: url('resources/images/gameImg/ek.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#apple1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/apple1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#banana1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/banana1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#blueberry1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/blueberry1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#grape1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/grape1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#orange1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/orange1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#potato1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/potato1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#pumpkin1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/pumpkin1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#quince2 {
	display: inline-block;
	background-image: url('resources/images/gameImg/quince2.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#radish1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/radish1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#swpotato1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/swpotato1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#tomato1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/tomato1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#wtmelon1 {
	display: inline-block;
	background-image: url('resources/images/gameImg/wtmelon1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#ckdrh {
	display: inline-block;
	background-image: url('resources/images/gameImg/ckdrh.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}


.coin {
	display: inline-block;
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	margin-left: 19.2%;
	background-color: #FFFFFF;
}

#money {
	display: inline-block;
	border: 0px solid #000000;
	width: 120px;
	height: 50px;
	font-size: 25pt;
	text-align: left;
	cursor: pointer;
	min-height: 50px;
	min-width: 120px;
	position: absolute;
	background-color: #FFFFFF;
}

#10_6 {
	display: inline-block;
	background-image: url('resources/images/gameImg/h1.png');
	width: 50px;
	height: 50px;
	background-position: 50% 50%;
	cursor: pointer;
	background-repeat: no-repeat;
	background-size: cover;
}

#buildTools {
	display: inline-block;
	border: 0px solid #000000;
	width: 1200px;
	vertical-align: top;
}

#mg {
	display: inline-block;
	width: 300px;
	height: 500px;
	vertical-align: top;
}

#main {
	display: inline-block;
	width: 1704px;
	padding: 0;
	vertical-align: top;
}

#map {
	display: inline-block;
	width: 1202px;
}

#up {
	vertical-align: top;
}

#level {
	display: inline-block;
	width: 1500px;
}

#life {
	display: inline-block;
	width: 400px;
	height: 300px;
	border: 1px solid #000000;
}

#house {
	width: 60px;
	height: 60px;
}

#levelmoney {
	display: inline-block;
	width: 100px;
	height: 21px;
	text-align: center;
	vertical-align: top;
	color: #AAAAAA;
	font-size: 13pt;
}

#levelBtn {
	display: inline-block;
}

.lv {
	background-color: #EEEEEE;
	color: #333333;
	width: 100px;
	height: 30px;
	font-size: 13pt;
}

#lvmo {
	display: inline-block;
	width: 100px;
	height: 21px;
	text-align: center;
	vertical-align: top;
	color: #AAAAAA;
	font-size: 13pt;
}

#lvmo2 {
	vertical-align: top;
	display: inline-block;
	background-color: #111111;
	height: 28px;
	width: 300px;
	border: 1px solid #222222;
	text-align: center;
}

#text {
	font-size: 10pt;
	color: #EEEEEE;
	display: inline-block;
	border: 1px solid #000000;
	background-color: #111111;
	width: 400px;
	height: 57px;
}
</style>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
	var xSize = 20;
	var ySize = 13;
	var imgsrc;
	var temp;
	//버튼 이미지 배열
	var block = [ "d2.png", "d4.png", "d6.png", "d7.png", "g1.png", "g2.png",
			"h1.png", "h2.png", "r1.png", "r2.png", "r3.png", "r4.png",
			"r5.png", "r6.png", "u1.png", "u2.png", "u3.png", "u4.png",
			"u5.png", "u6.png", "w1.png", "w2.png", "t1.png", "t2.png",
			"c.png", "cw.png", "ek.png", //27
			"apple1.png", "banana1.png", "blueberry1.png", "grape1.png",
			"orange1.png", "potato1.png",//32
			"pumpkin1.png", "quince2.png", "radish1.png", "swpotato1.png",
			"tomato1.png", "wtmelon1.png",//38               
			"apple2.png", "banana2.png", "blueberry2.png", "grape2.png",
			"orange2.png", //43
			"potato2.png", "pumpkin2.png", "quince1.png", "radish2.png",
			"swpotato2.png", //48
			"tomato2.png", "wt2.png", //50
			"u7.png", "u8.png", "u9.png", "u10.png", "ckdrh.png",//55
			"u11.png", "u12.png", "u13.png", "r7.png" ]; //59
	//레벨업 내용 배열				
	var text = [
			"엄마,아빠의 사랑으로 \n세상에 태어나게 되었습니다.",
			"엄마,아빠의 사랑을 받으며 무럭무럭 자라 \n초등학생이 되었습니다.",
			"엄마,아빠의 말도 안 듣고 가끔은 다투기도 하지만 \n어느덧 의젓한 고등학생이 되었습니다.",
			"고등학교를 졸업하여, \n국방의 의무를 다하러 군에 입대를 하였습니다.",
			"무사히 전역, 대학교를 졸업하여 취직. \n사회초년생이 되었습니다.",
			"어느덧 나이는 30대 안정적인 직장에 다니며 \n사랑하는 사람을 만나게 되었고,\n 결혼을 하게되었습니다.",
			"결혼 5년차. 이제는 두 아이의 아빠, \n한 가정의 가장으로 가족들을 지키며\n행복한 가정을 이루었습니다.",
			"아이들을 바라보며 살아온 지금. \n아들, 딸도 집을 떠나며, \n다시 아내와 남게되었습니다.\n요즘따라 부쩍 돌아가신 어머니, 아버지가 생각납니다." ]
	//레벨업 이미지 배열
	var life = [ "1_baby.gif", "resources/images/gameImg/2_chi.gif", 
				"resources/images/gameImg/3_student.gif", "resources/images/gameImg/4_army.gif",
			"resources/images/gameImg/5_opp.gif", "resources/images/gameImg/6_marry.gif", 
			"resources/images/gameImg/7_familly.gif", "resources/images/gameImg/8_old.jpg",
			"resources/images/gameImg/9_die.gif" ];
	//돈 배열
	var blockM = [ 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
			10, 10, 10, 10, 10, 10, 10, 10, 1200, 10000000000000, 1800, 1600, 1400, 200, 600, 2000, 800, 400,
			600, 1000, "", "", "", "", "", "", "", "", "", "", "", "", 10, 10, 10, 10,
			10, 10, 10, 10, 10 ];
	var build = -1;
	var buildBtn = null;
	var money = 999999;
	var money1 = 5000;
	var cc = 1;
	var get;

	window.onload = function() {
		var tb = document.getElementById("tb");

		var html = "";
		/* 게임 화면 테이블 생성  */
		for (var i = 0; i < ySize; i++) {
			html += "<tr>";
			for (var j = 0; j < xSize; j++) {
				if (j == 9 && i == 6) {
					html += "<td id= \"" + j + "_" + i + "\" ><img src='resources/images/gameImg/h1.png' height='60px' width='60px' id='house' onclick='house'/></td>";
					

				} else if (j == 10 && i == 6) {
					html += "<td id= \"" + j + "_" + i + "\" ><img src='resources/images/gameImg/cg.png' height='60px' width='60px' id='house' onclick='house'/></td>";

				} else if (j >= 10, i >= 0) {
					html += "<td id= \"" + j + "_" + i + "\" ></td>";
				}
			}
			html += "</tr>";
		}
		tb.innerHTML = html;
		/* $("#10_6").css("background-image", "url('resources/images/gameImg/" + block[4] + "')");  */
		
	}
	$(document).ready(function(){
		
				/*  setInterval(function(){
				   $("#r1") =$("#r2");
				}, 200);  */
				
				$("#money").html(money);
				$("#buildTools").on("click", "input[type='button']",
						function() {//#buildTools안에 input[type='button'] 을 클릭 
							$("#" + buildBtn).css("border", "");//buildBtn 테두리 지우기
							build = $(this).val();//build에 현재값 입력
							$(this).css("border", "3px solid red");//현재 css값을 3px solid red 테두리 
							buildBtn = $(this).prop("id");//buildBtn에 현재 id값을 넣어줌      
						});
				//밭 생성
				$("#tb")
						.on(
								"click",
								"td",
								function() {//#tb안에 td를 클릭했을때
									var imgName = $(this).css(
											"background-image").substring(
											$(this).css("background-image")
													.lastIndexOf("/") + 1,
											$(this).css("background-image")
													.lastIndexOf("\")"));

									if (build != -1 && money >= blockM[build]) {//만약 build가 -1이 아니고 가진돈이 지불금액보다 많을때
										$(this).css("background-image",
												"url('resources/images/gameImg/" + block[build] + "')");//배경이미지 변경(배열로 이미지 호출)
										$("#money")
												.html(money -= blockM[build]); //가진돈에서 지불금액만큼 뺀다 
										ch($(this).prop("id")); //현재 주소값에                   
										console.log($("#" + buildBtn).css(
												"border"));
										$("#" + buildBtn).css("border", "");
										build = -1;
									} else if (money < blockM[build]) {
										alert("돈이 부족합니다.");
										$("#" + buildBtn).css("border", "");
										build = -1;
									} else if (build == -1
											&& imgName == "apple2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/apple1.png')");
										$("#money").html(money += 300);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "banana2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/banana1.png')");
										$("#money").html(money += 1000);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "blueberry2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/blueberry1.png')");
										$("#money").html(money += 600);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "grape2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/grape1.png')");
										$("#money").html(money += 500);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "orange2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/orange1.png')");
										$("#money").html(money += 400);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "potato2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/potato1.png')");
										$("#money").html(money += 50);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "pumpkin2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/pumpkin1.png')");
										$("#money").html(money += 100);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "quince1.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/quince2.png')");
										$("#money").html(money += 300);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "radish2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/radish1.png')");
										$("#money").html(money += 70);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "swpotato2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/swpotato1.png')");
										$("#money").html(money += 60);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "tomato2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/tomato1.png')");
										$("#money").html(money += 65);
										ch($(this).prop("id"));
									} else if (build == -1
											&& imgName == "wt2.png") {
										$(this).css("background-image",
												"url('resources/images/gameImg/wtmelon1.png')");
										$("#money").html(money += 100);
										ch($(this).prop("id"));
									}

								});

				$("#tb").on("click", "#house", function() {
					attr("disabled", "disabled") /* attr 이 속성으로 값을 넣겠다.  */
				});

				$("#levelmoney").html(money1);
				$("#text").html(text[0]);
				$("#up1").on("click", function() {
					if (money >= money1) {
						$("#money").html(money -= money1);
						$("#bebe").attr("src", life[1]);
						$("#levelmoney").html(money1 = money1*2);
						$("#up1").hide(); //감추기
						$("#up2").show(); //보이기
						$("#text").html(text[1]);
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
				$("#up2").on("click", function() {
					if (money >= money1) {
						$("#money").html(money -= money1);
						$("#bebe").attr("src", life[2]);
						$("#levelmoney").html(money1 = money1*2);
						$("#up2").hide(); //감추기
						$("#up3").show(); //보이기
						$("#text").html(text[2]);
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
				$("#up3").on("click", function() {
					if (money >= money1) {
						$("#money").html(money -= money1);
						$("#bebe").attr("src", life[3]);
						$("#levelmoney").html(money1 = money1*2);
						$("#up3").hide(); //감추기
						$("#up4").show(); //보이기
						$("#text").html(text[3]);
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
				$("#up4").on("click", function() {
					if (money >= money1) {
						$("#money").html(money -= money1);
						$("#bebe").attr("src", life[4]);
						$("#levelmoney").html(money1 += 2000);
						$("#up4").hide(); //감추기
						$("#up5").show(); //보이기
						$("#text").html(text[4]);
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
				$("#up5").on("click", function() {
					if (money >= money1) {
						$("#money").html(money -= money1);
						$("#bebe").attr("src", life[5]);
						$("#levelmoney").html(money1 += 2000);
						$("#up5").hide(); //감추기
						$("#up6").show(); //보이기
						$("#text").html(text[5]);
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
				$("#up6").on("click", function() {
					if (money >= money1) {
						$("#money").html(money -= money1);
						$("#bebe").attr("src", life[6]);
						$("#levelmoney").html(money1 += 2000);
						$("#up6").hide(); //감추기
						$("#up7").show(); //보이기
						$("#text").html(text[6]);
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
				$("#up7").on("click", function() {
					if (money >= money1) {
						$("#money").html(money -= money1);
						$("#bebe").attr("src", life[7]);
						$("#levelmoney").html(money1 += 2000);
						$("#up7").hide(); //감추기
						$("#up8").show(); //보이기
						$("#text").html(text[7]);
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
				$("#up8").on("click", function() {
					if (money >= money1) {
						location.href = "GameEnding";
						/* end(); */
					} else if (money < money1) {
						alert("돈이 부족합니다.");
					}
				});
	});
	// 시간에 따른 이미지 변경
	function ch(loc) {
		var imgName = $("#" + loc).css("background-image").substring(
				$("#" + loc).css("background-image").lastIndexOf("/") + 1,
				$("#" + loc).css("background-image").lastIndexOf("\")"));
		//console.log($("#" + loc).css("background-image").substring($("#" + loc).css("background-image").lastIndexOf("/") + 1, $("#" + loc).css("background-image").lastIndexOf("\")")));
		if (imgName == "apple1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[39] + "')");
			}, 15000);

		}
		if (imgName == "banana1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[40] + "')");
			}, 15000);
		}
		if (imgName == "blueberry1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[41] + "')");
			}, 15000);

		}
		if (imgName == "grape1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[42] + "')");
			}, 15000);
		}
		if (imgName == "orange1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[43] + "')");
			}, 15000);
		}
		if (imgName == "potato1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[44] + "')");
			}, 15000);
		}
		if (imgName == "pumpkin1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[45] + "')");
			}, 15000);
		}
		if (imgName == "quince2.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[46] + "')");
			}, 15000);
		}
		if (imgName == "radish1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[47] + "')");
			}, 15000);
		}
		if (imgName == "swpotato1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[48] + "')");
			}, 15000);
		}
		if (imgName == "tomato1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[49] + "')");
			}, 15000);
		}
		if (imgName == "wtmelon1.png") {
			setTimeout(function() {
				$("#" + loc)
						.css("background-image", "url('resources/images/gameImg/" + block[50] + "')");
			}, 15000);
		}
	}
</script>
</head>
<body>
	<div id="main">
		<div id="mainbg">
			<div id="game">
				<div id="main">
					<div id="map">
						<table border="1" cellspacing="0">
							<tbody id="tb">
							</tbody>
						</table>
					</div>
					<div id="mg">
						<div id="life">
							<span> <img alt="baby" src="resources/images/gameImg/1_baby.gif" width="400px"
								height="300px" id="bebe">
							</span>
						</div>
						<div id="text"></div>
						<div id="level">
							<div id="levelBtn">
								<input type="button" class="lv" id="up1" value="LEVEL UP"size="300px" /> 
								<input type="button" class="lv" id="up2" value="LEVEL UP" size="300px" hidden="hidden" /> 
								<input type="button" class="lv" id="up3" value="LEVEL UP" size="300px" hidden="hidden" /> 
								<input type="button" class="lv" id="up4" value="LEVEL UP" size="300px" hidden="hidden" /> 
								<input type="button" class="lv" id="up5" value="LEVEL UP" size="300px" hidden="hidden" /> 
								<input type="button" class="lv" id="up6" value="LEVEL UP" size="300px" hidden="hidden" /> 
								<input type="button" class="lv" id="up7" value="LEVEL UP" size="300px" hidden="hidden" /> 
								<input type="button" class="lv" id="up8" value="LEVEL UP" size="300px" hidden="hidden" />
							</div>
							<div id="lvmo2">
								<div id="lvmo">필요한 돈 :</div>
								<div id="levelmoney"></div>
							</div>
						</div>
					</div>
				<table border="1" cellspacing="0">
					<tbody id="tb">
					</tbody>
				</table>
				<div id="buildTools">
					<input type="button" value="9"  id="water1" title="10원"/> 
					<input type="button" value="10" id="water2" title="10원"/> 
					<input type="button" value="11" id="water3" title="10원"/> 
					<input type="button" value="16" id="utari3" title="10원"/> 
					<input type="button" value="14" id="utari1" title="10원"/> 
					<input type="button" value="54" id="utari10" title="10원"/> 
					<input type="button" value="17" id="utari4" title="10원"/> 
					<input type="button" value="21" id="umul2" title="10원"/> 
					<input type="button" value="26" id="chi" title="10원"/> 
					<input type="button" value="22" id="tree1" title="10원"/> 
					<input type="button" value="23" id="tree2" title="10원"/> 
					<input type="button" value="22" id="tree1" title="10원"/> 
					<input type="button" value="33" id="pumpkin1" title="600원"/> 
					<input type="button" value="32" id="potato1" title="200원"/> 
					<input type="button" value="6"  id="house1" title="10원"/> 
					<input type="button" value="4" id="ground" title="10원"/> 
					<img   class="coin" alt="mo" src="resources/images/gameImg/coin.gif"> <b>
					<div id="money"></div></b>
					<p>
					<input type="button" value="0"  id="bridge1" title="10원"/> 
					<input type="button" value="59" id="water6" title="10원"/> 
					<input type="button" value="8"  id="water" title="10원"/> 
					<input type="button" value="18" id="utari5" title="10원"/> 
					<input type="button" value="56" id="utari11" title="10원"/>
					<!--
       					<input type="button" value="3"  id="bridge4" /> 
      					<input type="button" value="2"  id="bridge3" />  
      				-->
					<input type="button" value="51" id="utari7" title="10원"/> 
					<input type="button" value="57" id="utari12" title="10원"/> 
					<input type="button" value="58" id="utari13" title="10원"/> 
					<input type="button" value="25" id="cow" title="10원"/> 
					<input type="button" value="27" id="apple1" title="1200원"/> 
					<input type="button" value="28" id="banana1" title="2500원"/> 
					<input type="button" value="31" id="orange1" title="1400원"/> 
					<input type="button" value="35" id="radish1" title="800원"/> 
					<input type="button" value="36" id="swpotato1" title="400원"/>
					<input type="button" value="7"  id="house2" title="10원"/> 
					<input type="button" value="5"  id="ground2" title="10원"/>
					<p>
					<input type="button" value="13" id="water5" title="10원"/> 
					<input type="button" value="1"  id="bridge2" title="10원"/> 
					<input type="button" value="12" id="water4" title="10원"/> 
					<input type="button" value="15" id="utari2" title="10원"/> 
					<input type="button" value="52" id="utari8" title="10원"/> 
					<input type="button" value="53" id="utari9" title="10원"/> 
					<input type="button" value="19" id="utari6" title="10원"/> 
					<input type="button" value="20" id="umul1" title="10원"/> 
					<input type="button" value="24" id="character" title="10000원"/>
					<input type="button" value="29" id="blueberry1" title="1800원"/> 
					<input type="button" value="30" id="grape1" title="1600원"/> 
					<input type="button" value="34" id="quince2" title="2000원"/> 
					<input type="button" value="38" id="wtmelon1" title="1000원"/> 
					<input type="button" value="37" id="tomato1" title="600원"/>
					<input type="button" value="55" id="ckdrh" title="10원"/>
				</div>
				</div>
			</div>
		</div>
		<embed id="bgm" src="resources/images/gameImg/bgm2.mp3" loop="infinite" />
		
</body>
</html>