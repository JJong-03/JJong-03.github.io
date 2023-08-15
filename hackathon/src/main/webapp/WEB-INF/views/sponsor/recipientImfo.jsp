<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/recipient/video.css">
</head>
<body>

<div class="wrapper">
	
	<div class="wrap">

			<div class="logo_wrap">
				<span>Book Mall</span>
			</div>
				
				<div class="video_button_wrap">
					<input type="button" class="video_button" value="피후원자 정보">
				</div>			
			</div>	
	</div>

<script>

	/* 로그인 버튼 클릭 메서드 */
	$(".login_button").click(function(){
		
		//alert("로그인 버튼 작동");
		
		/* 로그인 메서드 서버 요청 */
		$("#login_form").attr("action", "/member/login.do");
		$("#login_form").submit();
		
	});

</script>



</body>
</html>