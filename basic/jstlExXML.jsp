<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="xmltest">
		<books>
			<book>
				<name>JAVA STUDY</name>
				<author>M1</author>
				<price>1000</price>
			</book>
			
			<book>
				<name>JSP STUDY</name>
				<author>M2</author>
				<price>2000</price>
			</book>
		</books>
	</c:set>
	
		<x:parse xml="${xmltest }" var="output"/>
		<x:out select="$output/books/book[1]/name"/>
		<b>The price of the second book</b>:
		<x:out select="$output/books/book[2]/price"/>
		
		
		
		
		
		
</body>
</html>