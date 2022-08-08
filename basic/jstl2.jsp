<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<c:set var="name" value="JAVA" />
	<c:if test="${name eq 'JAVA' }">
		JAVA입니다.
	</c:if>
	<br />
	<c:if test="${name ne 'JAVA' }">
		JAVA가 아니다.
	</c:if>
	<br />
	<c:if test="${empty name }">
		name값은 없다.
	</c:if>
	<br />
	<c:if test="${not empty name }">
		name값이 있다.
	</c:if>
	<br /><br /><br /><br />
	
	
	<c:set var="userId" value="m1" />
	<c:set var="userPW" value="11" />
	<c:if test="${(userId eq 'm1') and (userPw eq '11') }">
		로그인 성공
	</c:if>
	<br />
	<c:if test="${(userId eq 'm1') or (userPw eq '11') }">
		아이디나 비밀번호가 일치 합니다.
	</c:if>
	<br />
	<c:if test="${(not userId eq 'm1') or (! userPw eq '11') }">
		아이디나 비밀번호가 일치하지 않습니다.
	</c:if>
	<br />
	<c:if test="${userId ne null }">
		null이 아니다.
	</c:if>
	<br />
	
	<!-- 다중 조건 choose ~ when ~ otherwise -->
	<c:set var="name" value="JAVA" />
	<c:choose>
		<c:when test="${name eq 'JAVA' }">
			JAVA 입니다.
		</c:when>
		<c:when test="${name eq 'JSP' }">
			JSP 입니다.
		</c:when>
		<c:otherwise>
			해당되는 과목이 없습니다.
		</c:otherwise>
	</c:choose>
	<br />
	
	<%
		String id=request.getParameter("id");
		String age=request.getParameter("age");
	%>
	이름 : <%=id %>, 나이 : <%=age %> <br />
	이름 : ${param.id }, 나이 : ${param.age } <br />
	<c:choose>
		<c:when test="${(param.id eq 'm1') and (param.age eq '111') }">
			로그인 성공
		</c:when>
		<c:otherwise>
			로그인 실패
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>