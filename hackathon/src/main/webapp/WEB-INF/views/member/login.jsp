<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&family=Titillium+Web:wght@300;600&display=swap"
    rel="stylesheet">
  <script src="https://kit.fontawesome.com/dd4cd92877.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/style.css">
</head>

<body>
  <header>
    <div class="logo_1" onclick="location.href='index.html'"><i class="fa-regular fa-lightbulb"></i></div>
  </header>

  <form id="form" method="post">
    <div class="supporte_main">
      <div class="loginForm">
        <div class="form_space">
          <p class="form_title">아이디</p>
          <input class="inputform" name="memberId">
        </div>
        <div class="form_space">
          <p class="form_title">비밀번호</p>
          <input class="inputform" name="memberPw">
        </div>
        <div class="finder">
          <a href="#">아이디 찾기</a>
          <a href="#">비밀번호 찾기</a>
        </div>
        <input type="button" class="go" value="로그인">
      </div>
    </div>
  </form>


<script>

/* 로그인 버튼 클릭 메서드 */
$(".go").click(function(){
	
	//alert("로그인 버튼 작동");
	
	/* 로그인 메서드 서버 요청 */
	$("#form").attr("action", "/member/login.do");
	$("#form").submit();
	
});

</script>
  
</body>

</html>