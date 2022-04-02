
window.onload=function(){
    var cookie = document.cookie.split(';');
    
}


function checkSignUp() {
    idValue = document.getElementById('idValue');
    pwValue = document.getElementById('pwValue');
    pwConfirm = document.getElementById('pwConfirm');
    namevalue = document.getElementById('namevalue');
    rankValue = document.getElementById('rankValue');
    departValue = document.getElementById('departValue');
    submitForm = document.getElementById('submitForm');
    var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
    var pattern3 = /[~!@\#$%<>^&*]/;


    if (idValue.value=="" || pwValue.value=="" || pwConfirm.value=="" || namevalue.value =="" || rankValue.value =="none" || departValue.value == "none"){
        alert("모두 채워주세요");
        return false
    }

    if (pwValue.value != pwConfirm.value) {
        alert("비밀번호와 비밀번호 확인이 다릅니다.")
        return false;
    }

    if(!pattern1.test(pwValue.value)||!pattern2.test(pwValue.value)||!pattern3.test(pwValue.value)||pwValue.length<8){
        alert("비밀번호는 영문 숫자 특수문자를 하나씩 추가한 8글자 이상이어야 합니다.")
        return false;
    }

    document.getElementById("submitForm").submit();
}
