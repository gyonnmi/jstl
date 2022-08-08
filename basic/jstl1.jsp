<%@page import="org.study.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
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
	<h3>변수설정</h3>
	<%! String name1; %>
	<% name1="s1"; %>
	이름 <%=name1 %> <br />
	<c:set var="name">m1</c:set>
	<c:set var="age" value="33" />
	이름은 ${name }입니다.
	<br /> 나이는
	<c:out value="${age }" />살 입니다. <br />
	
	<h3>변수삭제</h3>
	<c:remove var="name"/>
	<c:set var="age" value="25" /> 이름은 ${name }입니다. <br />
	나이는 <c:out value="${age }" />살 입니다. <br />
	
	<h3>forEach</h3>
	<c:forEach var="i" begin="1" end="10" step="1">
		${i }&nbsp;
	</c:forEach>
	<br />
	
	<!-- 1~10까지의 합 구하기 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:set var="sum" value="${sum+i }" />
	</c:forEach>
	1~10까지의 합 ${sum }
	
	<!-- 10 9 8 7 6 5 4 3 2 1 출력하기 -->
	<c:forEach var="i" begin="0" end="9" step="1">
		${10-i }&nbsp;
	</c:forEach>
	<br />
	
	<h3>문자열 분리</h3>
	<c:forTokens var="car" items="JAVA, SERVLET, JSP, HTML, CSS" delims=",">
		${car } <br />
	</c:forTokens>
	
	<br />
	<%
		ArrayList<MemberDto> members=new ArrayList<MemberDto>();
		members.add(new MemberDto("m1", "11", "s1", 11, "남"));
		members.add(new MemberDto("m2", "11", "s1", 11, "여"));
		members.add(new MemberDto("m3", "11", "s1", 11, "여"));
		members.add(new MemberDto("m4", "11", "s1", 11, "남"));
		members.add(new MemberDto("m5", "11", "s1", 11, "남"));
		request.setAttribute("members", members);
	%>
	
	<table>
		<tr>
			<th>status</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>성별</th>
		</tr>
		
<%-- 		<c:forEach var="member" item="${members }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${member.userId }</td>
				<td>${member.userPw }</td>
				<td>${member.userAge }</td>
				<td>${member.userGender }</td>
			</tr>
		</c:forEach> --%>
	</table>
	
	
	<!-- 문자열 분리 -->
	<c:forTokens var="JavaStudy" items="java, jsp, html, css, javascript, jquery, spring" delims=",">
		${JavaStudy } 
	</c:forTokens>
	
	
	
</body>
</html>