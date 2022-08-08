<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str" value="java jsp javascript html css" /> 
	<c:set var="str2" value="123456789" />  <br /><br />
	
	<c:out value="${fn:contains( str, 'java' )}"/>
	
	<c:if test="${fn:contains( str, 'java' ) }">
		<div>java가 포함되어 있습니다.</div>
	</c:if> <br />
	
	특정문자열을 찾는 인덱스 : ${fn:indexOf(str, 'jsp') } <br />
	특정문자열을 찾는 인덱스 : ${fn:indexOf(str, 'html') } <br /> <br />
	
	문자열의 길이 : ${fn:length(str)} <br />
	문자열의 길이 : ${fn:length(str2)} <br /><br />
	
	<c:out value="${str }"/>
	<c:out value="${str2 }"/>
	
	<c:set var="str3" value="java jsp javascript"/>
	구분자를 이용해서 문자열을 분리: ${fn:split(str3, ' ') } <br />
	
	<!-- 구분자로 분리시켜서 배열 -->
	<c:set var="str3Arr" value="${fn:split(str3, ' ') }" /> <br />
	${str3Arr } <br />
	
	<c:forEach var="i" items="${str3Arr }">
		${i }
	</c:forEach>
	
	<!-- 구분자를 이용해서 문자열 합치기 -->
	<c:set var="str3Join" value="${fn:join(str3Arr, '-')}"/> <br />
	${str3Join } <br /><br />
	
	<c:set var="str5" value="java jsp html"/>
	${str5 }: ${fn:substring(str5,0,1) } <br />
	
	<c:set var="uri" value="<%=request.getRequestURI() %>"/> <br />
	<c:set var="path" value="<%=request.getContextPath() %>"/> <br />
	<c:out value="${uri }" />
	<c:out value="${path }" />
	
	<c:set var="size1" value="${fn:length(uri) }" /> <br />
	<c:out value="${size1 }" />
	<c:set var="size2" value="${fn:length(path) }" /> <br />
	<c:out value="${size2 }" />         <%--문자열, 시작인덱스, 가져올인덱스-1 --%>
	<c:set var="baseURL" value="${fn:substring(uri, size2, size1) }" />
	${baseURL } <br />
	<c:set var="baseURL2" value="${fn:substring(uri, size2, size1-4) }" />
	${baseURL2 } <br />
	<c:set var="baseURL3" value="${fn:substring(uri, size2+1, size1-4) }" />
	${baseURL3 } <br /> <br />
	
	
	<%-- 주민등록번호 이용해서 생년월일, 남여 --%>
	<c:set var="jumin" value="9801012501412"/>
	
	<%-- 주민등록번호 6자리 이용해서 생년월일(1998년 01월 01일) 출력 --%>
	<c:set var="year" value="${fn:substring(jumin,0,2)+1900 }"/>
	<c:set var="month" value="${fn:substring(jumin,2,4) }"/>
	<c:set var="day" value="${fn:substring(jumin,4,6) }"/>
	<c:out value="${year }년 ${month }월 ${day }일"/> <br />
	
	<%-- 주민등록번호 7번째 자리 이용해서 1이면 남자, 2면 여자 출력 --%>
	<c:choose>
		<c:when test="${fn:substring(jumin,6,7) eq '1'}">
			<c:out value="남자"></c:out>
		</c:when>
		<c:when test="${fn:substring(jumin,6,7) eq '2'}">
			<c:out value="여자"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value=" "></c:out>
		</c:otherwise>
	</c:choose> <br /> <br />
	
	
<%
	String jumin2="9801012501412";
	String j7=jumin2.substring(6,7);
	
	String gender="";
	if(j7.equals("1")) {
		gender="남자";
	} else if(j7.equals("2")) {
		gender="여자";
	} else {
		gender="";
	}
	
%>
	
	주민번호 7번째 숫자 : <%=j7 %> <br />
	성별 : <%=gender %>
	
<%-- 대문자 --%>
<c:set var="s1" value="ABCDEF" />
${fn:toUpperCase(s1) } <br />
	
<%-- 소문자 --%>	
<c:set var="s2" value="abcdef" />
${fn:toLowerCase(s2) } <br /><br />
	
	
<c:set var="s3" value=" mmm mm mm     " />	
${fn:length(s3) }
	
<%-- <c:set var="s4" value="${fn:trim(s4 }"/> --%>
${fn:length(s4) } <br />
	
	
	
</body>
</html>