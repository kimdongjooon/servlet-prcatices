<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String row = request.getParameter("r");
	String col = request.getParameter("c");
	
	int nRow = 0;
	int nCol = 0;
	try{
		nRow = Integer.parseInt(row);
		nCol = Integer.parseInt(col);
	} catch (Exception ex){
		System.out.println("올바른 입력값이 아닙니다.");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" celspacing="0" cellpadding="10">
		<%
			for(int i = 0; i < nRow; i++){
		%>
			<tr>
			<%
				for(int j = 0 ; j <nCol; j++){
			%>
				<td>Cell(<%=i %>,<%=j %>)</td>
			<%
				}
			%>
			</tr>	
		<%
			}
		%>

	</table>
	
</body>
</html>