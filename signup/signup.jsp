<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sceduling Us - sign Up!</title>
</head>
<body>
    <img id="stageUsLogo" src="../img/logo.png">
    <form  action="updateUser.jsp" method="post" id="submitForm"> 
        <div id="idDiv" class="loginInput">
            아이디 :
            <input type="text" name="idValue" id="idValue">
        </div>
        <div id="psDiv" class="loginInput">
            비밀번호 : 
            <input type="password" name="pwValue" id="pwValue">
        </div>
        <div id="psConfirmDiv" class="loginInput">
            비밀번호 확인 : 
            <input type="password" id="pwConfirm">
        </div>
        <div id="psDiv" class="loginInput">
            이름 : 
            <input type="text" name="nameValue" id="namevalue">
        </div>
        <div id="psDiv" class="loginInput">
            직급 : 
            <select name="rank" id="rankValue">
                <option value="none">선 택</option>
                <option value="team">팀 원</option>
                <option value="leader">팀 장</option>
                <option value="ceo">대 표</option>
            </select>
        </div>
        <div id="psDiv" class="loginInput">
            부서 : 
            <select name="depart" id="departValue">
                <option value="none">선 택</option>
                <option value="edu">교육팀</option>
                <option value="develop">개발팀</option>
                <option value="account">회계팀</option>
            </select>
        </div>
    </form>
    <div>
        <button onclick="checkSignUp()">등 록</button>
        <button onClick="location.href='../ROOT/index.jsp'">취 소</button>
    </div>
    <script type="text/javascript" src="signup.js"></script>
</body>
</html>