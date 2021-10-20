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
	ex01_1.jsp <br/>
	<c:forEach var="var" items="${paramValues.check }">
		${var }
	</c:forEach>
	<hr/>
	<%
		String checkbox = request.getParameter("check");
		String[] values = request.getParameterValues("check");
		/* for(int i=0; i<values.length; i++) {
			out.print(values[i] + " ");
		} */
		out.print("<hr/>");
		for(String n : values) {
			out.print(n);
		}
		out.print("<br/>");
		String[] test = {"안녕", "하세", "요"};
		for(String s : test) {
			out.print(s);
		}
		int[] arr = {111, 222, 333, 444};
		for(int i : arr) {
			out.print(i);
		}
	%>
	<hr/>
	<%=checkbox %> <hr/>
</body>
</html>