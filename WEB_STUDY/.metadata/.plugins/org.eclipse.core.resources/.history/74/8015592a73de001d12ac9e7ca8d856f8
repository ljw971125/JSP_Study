<!-- 지시어 -->
<!-- 지시어종류(page): JSP 페이지에 대한 정보를 설정합니다.
 	 속성(language)[include]: 외부 파일을 현재 JSP 페이지에 포함시킵니다.
 	 값("java")[taglib]: 표현 언어에서 사용할 자바 클래스나 JSTL을 선언합니다. 
 	  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- language: 스크립팅 언어는 자바를 사용합니다.
	 contentType: 문서의 타입, 즉 MIME 타입 text/html 
	 			  캐릭터 셋 UTF-8입니다.
	 pageEncoding: 소스 코드의 인코딩 방식은 UTF-8입니다.-->

<!-- 스크립트 요소(선언부) -->
<%!
	String str1 = "안녕하세요.";
	String str2 = "라이언";
	String str3 = "JSP";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
<!-- 스크립트 요소(표현식) -->
	<h1>처음 만들어보는 <%= str3 %> 프로젝트</h1>
	<p>
<!-- 스크립트 요소(스크립트릿) -->
<% 
	out.println(str1 + str2+ "입니다. 열공합시다.");
%>
	</p>

</body>
</html>