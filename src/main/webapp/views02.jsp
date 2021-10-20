<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	name : ${param.name } <br/>
	gender : ${param.gender } <br/>
	<c:forEach var="season" items="${paramValues.season }">
		season : ${season } <br/>
	</c:forEach>
</body>
</html>