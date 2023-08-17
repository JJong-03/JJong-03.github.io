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
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>후원하기</title>
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
  <form name="form" action="">
    <div class="supporte_main">
      <div class="supporter">
        <img src="" alt="photo" class="photo">
        <div class="supporter_info">
          <div class="supporter_label">
            <div class="supporter_title">이름</div>
            <div class="supporter_detail">홍길동</div>
          </div>
          <div class="supporter_label">
            <div class="supporter_title">나이</div>
            <div class="supporter_detail">68세</div>
          </div>
          <div class="supporter_label">
            <div class="supporter_title">지역</div>
            <div class="supporter_detail">인천광역시 연수구</div>
          </div>
        </div>
      </div>

      <div class="support_form">
        <div class="support_radio">
          <p class="form_title">회원구분</p>
          <label>
            <input type="radio" name="userType" value="donator" id="donator" />
            <span>개인</span>
          </label>
          <label>
            <input type="radio" name="userType" value="Enterprise" id="Enterprise" />
            <span>기업</span>
          </label>
          <label>
            <input type="radio" name="userType" value="organization" id="organization" />
            <span>단체</span>
          </label>
        </div>

        <div class="form_space">
          <p class="form_title">후원회원명</p>
          <input id="name" type="text" class="input_form">
        </div>

        <div class="form_space">
          <p class="form_title">생년월일</p>
          <input id="birth" type="date" class="input_form">
        </div>

        <div class="support_radio">
          <p class="form_title">회원구분</p>
          <label>
            <input type="radio" name="genderType" value="man" id="man" />
            <span>남</span>
          </label>
          <label>
            <input type="radio" name="genderType" value="woman" id="woman" />
            <span>여</span>
          </label>
        </div>

        <div class="form_space">
          <p class="form_title">연락처</p>
          <input type="tel" class="input_form" id="phone">
        </div>

        <div class="receipt">
          <p class="form_title">기부금 영수증</p>
          <input type="checkbox" id="receipt" />
          <span class="receipt_radio">발급 신청</span>
        </div>

      </div>
      <div class="go" onclick="checkJoin();">후원하기</div>
    </div>
  </form>

  <script>
  function checkJoin() {
	  var donator = document.getElementById("donator");
	  var Enterprise = document.getElementById("Enterprise");
	  var organization = document.getElementById("organization");
	  var name = document.getElementById("name");
	  var birth = document.getElementById("birth");
	  var man = document.getElementById("man");
	  var woman = document.getElementById("woman");
	  var phone = document.getElementById("phone");
	  var receipt = document.getElementById("receipt");


	  if (!donator.checked && !Enterprise.checked && !organization.checked) {
	    alert("회원구분을 선택해주세요");
	    donator.focus();
	    return false;
	  }

	  if (name.value == "") {
	    alert("후원명을 입력하세요.");
	    name.focus();
	    return false;
	  };

	  if (birth.value == "") {
	    alert("생년월일을 입력하세요.");
	    birth.focus();
	    return false;
	  };

	  if (!man.checked && !woman.checked) {
	    alert("성별을 선택해주세요");
	    man.focus();
	    return false;
	  }

	  var reg = /^[0-9]+/g;
	  
	  if (!reg.test(phone.value)) {
	    alert("연락처는 숫자만 입력할 수 있습니다.");
	    phone.focus();
	    return false;
	  }

	  setTimeout(function () {
	    alert("후원이 완료되었습니다.")
	  }, 0);

	  document.form.submit(); 
	}
  </script>
</body>

</html>