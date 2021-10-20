<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="views02.jsp" method="post">
		<table border="1">
			<caption>설문 조사</caption>
			<tr>
				<td>이름 : </td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별 : </td>
				<td>
					<input type="radio" name="gender" value="남자">남자
					<input type="radio" name="gender" value="여자">여자
				</td>
			</tr>
			<tr>
				<td>좋아하는 계절 : </td>
				<td>
					<input type="checkbox" name="season" value="봄">봄
					<input type="checkbox" name="season" value="여름">여름
					<input type="checkbox" name="season" value="가을">가을
					<input type="checkbox" name="season" value="겨울">겨울
				</td>
			</tr>
			<tr>
				<th><input type="submit" value="전송"></th>
				<th><input type="reset" value="취소"></th>
			</tr>
		</table>
	</form>
</body>
</html>