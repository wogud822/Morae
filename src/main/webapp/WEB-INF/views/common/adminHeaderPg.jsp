<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
        @font-face {
            font-family: 'KorailRoundGothicBold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KorailRoundGothicBold.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
        }
        @font-face {
            font-family: 'KorailRoundGothicMedium';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KorailRoundGothicMedium.woff2') format('woff2');
            font-weight: 500;
            font-style: normal;
        }
        @font-face {
            font-family: 'KorailRoundGothicLight';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KorailRoundGothicLight.woff2') format('woff2');
            font-weight: 300;
            font-style: normal;
        }
        
        *{margin:0; padding:0;}
        li{list-style: none;}
        a{text-decoration: none;}
        img{border:none; display: block;}
        h1, h2, h3, h4, h5, h6{font-family: 'KorailRoundGothicBold', sans-serif; font-size:16px; color:#212732;}
        body, header, section, footer, div, ul, li, p, a, span, input{font-family: 'KorailRoundGothicMedium', sans-serif; font-size:16px; color:#212732;}

        #header{position:fixed; left:0; top:0; width:100%; height:100px; border-bottom: 1px solid #dedede; background-color:#fff; z-index:9999;}
        #header .headerInner{position:relative; width:80%; height:100px; margin:0 auto;}
        #header .headerInner .logo{position:absolute; width:180px; left:0; top:6px;}
        #header .headerInner .logo img{width:100%;}
        #header .headerInner .utilBefore{position:absolute; width:160px; right:0; top:40px; padding:0;}
        #header .headerInner .utilAfter{position:absolute; width:142px; right:0; top:28px; padding:0;}
        #header .headerInner .utilBefore>li{position:relative; float:left; width:49%; margin-left: 2%;}
        #header .headerInner .utilAfter>li{position:relative; float:left; width:44px; margin-left: 5px;}
        #header .headerInner .util li:first-child{margin-left:0px;}
        #header .headerInner .utilBefore>li a{font-size:18px; font-family: 'KorailRoundGothicBold'; color:#222;}
        #header .headerInner .util li a img{width:100%;}
        
#header .alarmList {
	position: absolute;
	right: 210px;
	top: 80px;
	display: none;
	overflow:auto;
	height: 300px;
	width: 235px;
	border: 1px solid #F9DCA3;
	border-radius: 3%;
	background-color: white;
}

#header .alarmList table {
	width: 200px;
	margin: 3px;
}

.alarmList button:hover{
	color: white;
	background-color: #FFBC38;
}
#alarmChkAll:hover{
	color: white;
	background-color: #FFBC38;
}
.alarmChk {
	border-radius: 5px;
	border: 1px solid #FFBC38;
	color: #FFBC38;
	background-color: white;
	width: 30px;
	height: 20px;
	font-size: 10px;
	margin-bottom: 3px;
	float: right;
	display: block;
}
#alarmChkAll{
	border-radius: 5px;
	border: 1px solid #FFBC38;
	color: #FFBC38;
	background-color: rgb(255,255,255);
	margin-bottom: 7px;
	height: 22px;
	width: 210px;
	
}

    </style>
</head>
<body>
	<%!
	    HttpSession session;
	%>
	<%
	    // 세션에 userInfo 속성이 있는지 확인
	    session = request.getSession();
	    Object userInfo = session.getAttribute("userInfo");
	%>
	<%
	    // 세션에 userInfo가 있는지 여부에 따라 다른 헤더 출력
	    if (userInfo != null) {
	%>
	
    <header id="header">
        <div class="headerInner">
            <h1 class="logo"><a href="<c:url value='/groupBuy/gbList'/>"><img src="<c:url value='/resources/img/logo.png'/>" alt="모래사장"></a></h1>
           
        </div>
		<div class="alarmList">
			<table>
				<thead>
					<tr>
						<td><button id="alarmChkAll" type="button">전체 읽음</button></td>
					</tr>
				</thead>
				<tbody id='list'>
				</tbody>
			</table>
		</div>
	</header>
    
    <script>
 		// userInfo가 있을 때만 실행되는 스크립트
		
		
		/**********************************************************************/
		
		

	</script>
    
    <%
	    } else {
	%>
    <header id="header">
        <div class="headerInner">
            <h1 class="logo"><a href="<c:url value='/main'/>"><img src="<c:url value='/resources/img/logo.png'/>" alt="모래사장"></a></h1>
            <ul class="util utilBefore">
                <li><a href="user/login">로그인</a></li>
                <li><a href="user/register">회원가입</a></li>
            </ul>
        </div>
    </header>
    <%
	    }
	%>
</body>
<script>
</script>
</html>