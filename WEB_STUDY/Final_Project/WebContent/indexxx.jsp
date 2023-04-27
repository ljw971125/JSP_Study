<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.jsp.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
<h1>관리자 페이지</h1>
<%
	File folder = new File("C:\\WEB_STUDY\\Final_Project");
	File[] listOfFiles = folder.listFiles(); 
%>
<form>
<ul>
<%
    for (int i = 0; i < listOfFiles.length; i++) {
        if (listOfFiles[i].isFile()) {
            String fileName = listOfFiles[i].getName();
            if (fileName.endsWith(".jpg") || fileName.endsWith(".png")) {
%>
                <img src="<%= request.getContextPath() %>/Final_Project/<%= fileName %>" alt="<%= fileName %>">
<%
            }
        }
    }
%>
</ul>
</form>
<form action="update.jsp" method="post" enctype="multipart/form-data">
<label for="image">새 이미지:</label>
<input type="file" name="image" id="image"><br><br>
<input type="submit" value="변경">
</form>
<form action="updateText.jsp" method="post">
    <h2>변경할 텍스트</h2>
    <textarea name="text" rows="4" cols="50"><%
        File file = new File("C:\\WEB_STUDY\\Final_Project\\text.txt");   
        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
        String line;
        while ((line = reader.readLine()) != null) {
            out.println(line);
        }
        reader.close();
    %></textarea><br><br>
    <input type="submit" value="변경">
</form>

</body>
</html>