<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sceduling Us - sign In!</title>
</head>
<body>
    <img id="stageUsLogo" src="../img/logo.png">
    <form  action="loginConfirm.jsp" method="post" id="submitForm"> 
        <div id="idDiv" class="loginInput">
            아이디 :
            <input type="text" id="idValue" name="idValue">
        </div>
        <div id="psDiv" class="loginInput">
            비밀번호 : 
            <input type="password" id="pwValue" name="pwValue">
        </div>
    </form>
    <div>
        <button onclick="checkLogin()">로그인</button>
        <button onClick="location.href='../signup/signup.jsp'">회원가입</button>
    </div>
    <script type="text/javascript" src="/index.js"></script>
</body>
</html>