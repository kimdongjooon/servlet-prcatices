<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 스크립트 표현  -->
<% 
/* post받은 값 받기 - 자바코드 작성 가능*/

request.setCharacterEncoding("utf-8");
String email = request.getParameter("email");
String password = request.getParameter("password");
String birthYear = request.getParameter("birthYear");
String gender = request.getParameter("gender");
String introduce = request.getParameter("introduce");
String[] hobbies = request.getParameterValues("hobby");

%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= email %></h1>
	<h2><%= password %></h2> 
	<h3><%= birthYear %></h3>
	<h4><%= gender %></h4>
	<p> 
	<%= introduce.replaceAll("\n","<br>") %> 
	</p>
	<p>
		<%
			for(String hobby : hobbies){
		%>
				<strong><%=hobby %></strong><br>		
		<% 
			}
		%>
		
	
		
	</p>
</body>
</html>