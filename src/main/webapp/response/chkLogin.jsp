<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="dbId" value="1"/>
	<c:set var="dbPwd" value="1"/>
	<c:set var="inputId" value="${param.id }"/>
	<c:set var="inputPwd" value="${param.pwd }"/>
	
	<c:choose>
		<c:when test="${dbId eq inputId }">
			<c:choose>
				<c:when test="${dbPwd eq inputPwd }">
					로그인 성공
				</c:when>
				<c:otherwise>
					비밀번호 틀림
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<d style="color:red">잘못된 아이디입니다.</d>
		</c:otherwise>
	</c:choose>
	
	<%-- 
	<c:choose>
		<c:when test="${dbId == inputId and dbPwd eq inputPwd }">
			<c:redirect url="main.jsp?id"/>
		</c:when>
		<c:otherwise>
			<c:redirect url="loginForm.jsp"/>
		</c:otherwise>
	</c:choose>
	--%>
	
	<%-- 
	<c:if test="${dbId == inputId and dbPwd eq inputPwd }">
		인증성공
		<c:redirect url="main.jsp"/>
	</c:if>
	<c:if test="${dbId != inputId || dbPwd ne inputPwd }">
		인증실패
		<c:redirect url="loginForm.jsp"/>
	</c:if>
	--%>
	<%-- 
	<%
		String dbId = "1";
		String dbPwd = "1";
		
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		if(dbId.equals(inputId) && dbPwd.equals(inputPwd)) {
			out.print("인증통과");
			//response.sendRedirect(request.getContextPath() + "/response/main.jsp?id="+inputId+"&pwd="+inputPwd);
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp?id="+inputId);
			rd.forward(request, response);
		} else {
			out.print("인증실패 !!");
			response.sendRedirect(request.getContextPath() + "/response/loginForm.jsp");
		}
	
	%>
	--%>
</body>
</html>