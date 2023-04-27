<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.nio.charset.StandardCharsets" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경 완료</title>
</head>
<body>
<h1>변경 완료</h1>
<p>텍스트가 성공적으로 변경되었습니다.</p>
<%
    request.setCharacterEncoding("UTF-8");
    String text = request.getParameter("text");
    File file = new File("C:\\WEB_STUDY\\Final_Project\\text.txt");
    BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), StandardCharsets.UTF_8));
    writer.write(text);
    writer.close();
%>
</body>
</html>