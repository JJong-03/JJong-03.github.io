<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "c##vam";
	String pwd = "He121076";
	String url = "jdbc:oracle:thin:@localhost:1521:orcldb";
	String sql = "select * from book_member";%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>피후원자 정보</title>
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

  <div class="supporte_main">
    <div class="supporter_Info">
      <div class="photo center"></div>
      <div class="supporter_info">
        <div class="supporter_label label_margin">
          <div class="supporter_title">이름</div>
          <div class="supporter_detail">홍길동</div>
        </div>
        <div class="supporter_label label_margin">
          <div class="supporter_title">나이</div>
          <div class="supporter_detail">68세</div>
        </div>
        <div class="supporter_label label_margin">
          <div class="supporter_title">지역</div>
          <div class="supporter_detail">인천광역시 연수구</div>
        </div>
      </div>
    </div>

    <div class="message">
      안녕하세요 후원자님!<br>
      홍길동님에게 후원을 하시겠습니까?
    </div>

    <div class="go" onclick="location.href='/sponsor/sponsoring'">후원하기</div>
  </div>
</body>
</html>