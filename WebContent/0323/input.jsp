<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	color: blue;
}

p {
	font-size: 1.5em;
	color: blue;
}
span{
	font-size: 2.0em;
	color : red;
}
</style>
</head>
<body>
	<h1>Java Server Page</h1>

	<p>클라이언트 요청시(전송) 전달되는 데이터를 받아서 처리하는 페이지이다</p>
	<p>jsp페이지에서는 html태그와 자바문장을 혼합하여 사용할 수 있다.</p>
	<p>자바문장을 사용하기 위해서는 &lt;% %&gt; 기호 안에 기술한다</p>
	<p>자바변수를 출력할 때는 &lt;%= %&gt; 기호안에 기술한다</p>
	<p>클라이언트 요청시 전달데이터는 request객체를 통하여 가져온다</p>
	<p>jsp페이지에서 실행결과를 클라이언트로 보낼 때는 response 객체를 이용한다</p>
	
<!-- request객체를 통하여 가져올때 get파라미터를 이용하는데 안의 내용은 input type의 name 과 일치해야한다 -->	
<!-- get은 한글이 먹히지만 post는한글이 안먹혀서 직접 선언해줘야함 -->
	<%
	request.setCharacterEncoding("UTF-8");
	
		String inputId = request.getParameter("id");
		String inputPass = request.getParameter("pass");
		String inputGender = request.getParameter("gender");
		
		String frr[] = request.getParameterValues("fruit");
		String str = "";
		for(int i=0; i<frr.length; i++){
			str+= frr[i] + " ";
		}
	%>
	
	<%= inputId %><span>님 환영합니다</span><br>
	당신의 성별은 <%=inputGender %>입니다.<br>
	당신이 좋아하는 과일 <%= str %> 입니다!!!<br>
</body>
</html>