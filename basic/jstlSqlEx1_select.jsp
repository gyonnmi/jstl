<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL</title>
</head>
<body>

<!-- 커넥션, DB연결 -->
<sql:setDataSource
	var="connect"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@//localhost:1521/xe"
	user="system"
	password="1234"
/>

<%-- 조회 --%>
<sql:query var="result" dataSource="${connect}">
	select * from member_0805
</sql:query>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>코드</th>
			<th>학력</th>
			<th>주민번호</th>
			<th>출신지</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="member" items="${result.rows}" varStatus="status">
		<tr>
			<td>${member.no }</td>
			<td>${member.name }</td>
			<td>${member.code }</td>
			<td>${member.school }</td>
			<td>${member.jumin }</td>
			<td>${member.city }</td>
		</tr>
	</c:forEach>
	</tbody>
	<tfoot></tfoot>
</table>







</body>
</html>