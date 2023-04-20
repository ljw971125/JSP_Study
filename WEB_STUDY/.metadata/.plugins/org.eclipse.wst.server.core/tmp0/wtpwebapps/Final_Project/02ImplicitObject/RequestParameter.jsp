<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
<%
request.setCharacterEncoding("UTF-8"); // 글자 깨짐 방지(★맨 처음에 넣기)
String id = request.getParameter("id");  
String sex = request.getParameter("sex");
String[] favo = request.getParameterValues("favo"); // 다중 선택 가능  
String favoStr = "";
if (favo != null) {  
    for (int i = 0; i < favo.length; i++) {
        favoStr += favo[i] + " ";
    }
}
String intro = request.getParameter("intro").replace("\r\n", "<br/>"); // 자기소개  
%>
<ul>
    <li>아이디 : <%= id %></li>
    <li>성별 : <%= sex %></li>
    <li>관심사항 : <%= favoStr %></li>
    <li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>