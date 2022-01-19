<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		function alreadyusecheck() {
			var id = document.signup.id.value;
			
			var popupX = (window.screen.width / 2) - (300 / 2);
			var popupY = (window.screen.height /2) - (200 / 2);
			
			window.open('alreadyusecheck.jsp?id=' + id,'중복 검사','height=200, width=300, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		}
		
		function checkmember() {
			var form = document.signup;
			
			var regid = /^[a-zA-Z0-9]{5,16}$/;
		    if(!regid.test(form.id.value)){
		            alert("아이디는 영문숫자를 포함하여 5~16자까지만 가능합니다.");
		            return false;
		    }
		    
		    var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		    var regphone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		    if(!regphone.test(phone)){
	            alert("전화번호를 다시 입력하세요.");
	            return false;
	   		}
		    
			form.submit();
		}
	</script>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="signup_process.jsp" name="signup" method="post">
		<p>아이디 : <input type="text" name="id"><input type="button" value="아이디중복검사" onclick="alreadyusecheck();">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이름 : <input type="text" name="name">
		<p>이메일 : <input type="text" name="email">
		<p>연락처 : 
			<select name="phone1">
				<option value="010">010
				<option value="016">016
				<option value="017">017
				<option value="018">018
			</select>-<input type="text" maxlength="4" size="4" name="phone2">-
			<input type="text" maxlength="4" size="4" name="phone3">
		<p><input type="button" value="등록" onclick="checkmember();"><input type="button" value="선택" onclick="location.href='select.jsp';">
	</form>
</body>
</html>