<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>연산결과 cal3</h2>
	<%
	try {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<br>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<br>");
		out.println(num1 + " x " + num2 + " = " + (num1*num2) + "<br>");
		out.println(num1 + " / " + num2 + " = " + (num1/num2) + "<br>");
	} catch (NumberFormatException e) {
	%>
		<script type="text/javascript">
			alert("그게 숫자냐?");
			history.go(-1);
		</script>
	<%
	} catch (ArithmeticException e) {
	%>	
		<script type="text/javascript">
			alert("머리 비었니? 0으로 어떻게 하니?");
			history.back();
		</script>
	<%
	} catch (Exception e) {
		out.println(e.getMessage());
	%>
		<script type="text/javascript">
			alert("하여튼 에러야");
			location.href="num2.html";
		</script>
	<%
	}
	%>
</body>
</html>