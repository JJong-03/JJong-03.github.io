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
<html>
<head>
<meta charset="UTF-8">
<title>JDBC를 이용한 데이터베이스 테이블 만들기</title>
</head>
<body>
	<%
		try {
		// 데이터베이스를 접속하기 위한 드라이버 SW 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스에 연결하는 작업 수행
		conn = DriverManager.getConnection(url, uid, pwd);
		// 쿼리를 생성gkf 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<td>이름</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이메일</td>
			<td>우편번호</td>
			<td>주소</td>
		
			<td>권한(0:피후원자,1:관리자,2:후원자))</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("memberName")%></td>
			<td><%=rs.getString("memberId")%></td>
			<td><%=rs.getString("memberPw")%></td>
			<td><%=rs.getString("memberMail") %></td>
			<td><%=rs.getString("memberAddr1") %></td>
			<td><%=rs.getString("memberAddr2")%>
			 <%=rs.getString("memberAddr3") %></td>
			<td><%=rs.getInt("adminCk") %></td>
		</tr>
	

	<%
		}
	} catch (Exception e) {
	e.printStackTrace();
	} finally {
	try {
	if (rs != null) {
		rs.close();
	}
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}
	%>
	</table>
</body>
</html>