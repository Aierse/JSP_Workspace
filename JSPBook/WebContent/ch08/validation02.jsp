<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function checkMember(){
		var form = document.Member;
		var id = form.id.value;
		
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|가-힣]/;
		//var regExpId = /^[a-z]+[a-z0-9]{5,19}$/g;
		//var regExpId = /^P[0-9]{4,11}$/;
		if (!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요.");
			form.id.select();
			return;
		}
		
		var passwd = form.passwd.value;
		var regExpPasswd = /^[0-9]*$/;
		if (!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자로 시작해주세요.");
			form.passwd.select();
			return;
		}
		
		var name = form.name.value;
		var regExpName = /^[가-힣]*$/;
		if (!regExpName.test(name)){
			alert("이름은 한글만 입력하세요.");
			form.name.select();
			return;
		}
		
		var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		if (!regExpphone.test(phone)){
			alert("전화번호를 다시 입력하세요.");
			form.phone.select();
			return;
		}
		form.submit();
	}
</script>
<body>
	<form name="Member" action="validation02_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"><input type="button" value="아이디중복검사">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이름 : <input type="text" name="name">
		<p>연락처 : 
			<select name="phone1">
				<option value="010">010
				<option value="016">016
				<option value="017">017
				<option value="018">018
			</select>-<input type="text" maxlength="4" size="4" name="phone2">-
		<p>이메일 : <input type="email" name="email">
		<p><input type="button" value="가입하기" onclick="checkMember()">
	</form>
</body>
</html>