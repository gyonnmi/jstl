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
<%-- 수정 --%>
<%-- <sql:update var="update" dataSource="${connect}">
	update member_0805 
	set name='유후보2', code='p7', school='2', jumin='8401011111111'
	where no='7'
</sql:update> --%>

<%-- Form 1 --%>
<sql:update var="update" dataSource="${connect}">
	update member_0805 set name='${param.name }', code='${parma.code }', 
	school='${param.school }', jumin='${param.jumin }', city='${param.city }'
	where no='${parma.no }'
</sql:update>

<%-- Form 2 --%>
<sql:update var="update" dataSource="${connect}">
	update member_0805 set name=?, code=?, school=?, jumin=?, city=? where no=?
	<sql:param value="${param.name }"/>
	<sql:param value="${param.code }"/>
	<sql:param value="${param.school }"/>
	<sql:param value="${param.jumin }"/>
	<sql:param value="${param.city }"/>
	<sql:param value="${param.no }"/>
</sql:update>



<%-- DB데이터 출력 (select) --%>
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