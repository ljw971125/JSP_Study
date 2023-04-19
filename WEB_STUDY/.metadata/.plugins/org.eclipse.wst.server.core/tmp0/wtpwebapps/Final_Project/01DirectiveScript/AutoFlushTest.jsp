<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="true"%>  <!--버퍼 설정-->
    <!-- 버퍼를 사용하고 싶지 않다면 buffer - "none"으로 지정합니다. 
    autoflush 속성은 버퍼가 모두 채워졌을 때의 처리 방법을 정하는데 사용합니다.
    true(기본값): 버퍼가 채워지면 자동으로 플러쉬 합니다.
    false: 버퍼가 채워지면 예외를 발생시킵니다.
    
    플러쉬(Flush): 버퍼 안의 데이터를 목적지로 전송하고
    버퍼를 비우는 작업을 말합니다.
    -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - buffer, autoFlush 속성</title>
</head>
<body>
<%
for (int i = 1; i <= 100; i++) {  // 버퍼 채우기
    out.println("abcde12345");
}
%>
</body>
</html>