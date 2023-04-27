<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.jsp.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ page import="java.net.URLDecoder" %>

<%
    String filePath = "C:\\WEB_STUDY\\Final_Project";
    DiskFileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    List<FileItem> items = upload.parseRequest(request);
    Iterator<FileItem> iter = items.iterator();
    while (iter.hasNext()) {
        FileItem item = iter.next();
        if (!item.isFormField()) {
            // 기존의 이미지 파일 삭제
            File folder = new File(filePath);
            File[] listOfFiles = folder.listFiles();
            for (int i = 0; i < listOfFiles.length; i++) {
                if (listOfFiles[i].isFile()) {
                    String fileName = listOfFiles[i].getName();
                    if (fileName.endsWith(".jpg") || fileName.endsWith(".png")) {
                        listOfFiles[i].delete();
                    }
                }
            }

            // 새 이미지 파일 업로드
            String fileName = item.getName();
            File uploadedFile = new File(filePath + "\\" + fileName);
            item.write(uploadedFile);
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경 완료</title>
</head>
<body>
<h1>변경 완료</h1>
<p>선택한 이미지가 성공적으로 변경되었습니다.</p>
</body>
</html>