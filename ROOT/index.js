window.onload=function(){

}


function checkLogin(){
    idValue = document.getElementById("idValue");
    pwValue = document.getElementById("pwValue");
    submitForm = document.getElementById("submitForm");

    if (idValue.value=="" || pwValue.value=="") {
        alert("아이디 혹은 비밀번호를 입력해주세요.")
        return false;
    }
    submitForm.submit();
}