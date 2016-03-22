<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo1" class="board.VO"/>
<%request.setCharacterEncoding("UTF-8");  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function popup(){
	 new daum.Postcode({
         oncomplete: function(data) {
             var fullAddr = ''; // 최종 주소 변수
             var extraAddr = ''; // 조합형 주소 변수

             // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
             if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                 fullAddr = data.roadAddress;

             } else { // 사용자가 지번 주소를 선택했을 경우(J)
                 fullAddr = data.jibunAddress;
             }

             // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
             if(data.userSelectedType === 'R'){
                 //법정동명이 있을 경우 추가한다.
                 if(data.bname !== ''){
                     extraAddr += data.bname;
                 }
                 // 건물명이 있을 경우 추가한다.
                 if(data.buildingName !== ''){
                     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                 }
                 // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                 fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
             }

             // 우편번호와 주소 정보를 해당 필드에 넣는다.
             document.getElementById('jzipcode').value = data.zonecode; //5자리 새우편번호 사용
             document.getElementById('jaddress1').value = fullAddr;

             // 커서를 상세주소 필드로 이동한다.
             document.getElementById('jaddress2').focus();
         }
     }).open();
 }
function JoinCheck()
{
 var form = document.joinform;
 if( !form.jname.value )   // form 에 있는 name 값이 없을 때
 {
  alert( "이름을 적어주세요" ); // 경고창 띄움
  form.jNAME.focus();   // form 에 있는 name 위치로 이동
  return;
 }  
 
 if( !form.jnname.value )
 {
  alert( "닉네임을 적어주세요" );
  form.jnname.focus();
  return;
 }
 if( !form.jid.value )
 {
  alert( "아이디을 적어주세요" );
  form.jid.focus();
  return;
 }

 if( !form.jpass.value )
 { 
  alert( "비밀번호를 적어주세요" );
  form.jpass.focus();
  return;
 }
 if (form.jpass.value != form.jpassok.value)
	  {
	  alert ("비밀번호가 다릅니다 다시 입력해주세요");
	  form.jpassok.focus();
	  return;
	  }
 
 if( !form.jemail.value )
 {
  alert( "이메일을 적어주세요" );
  form.jemail.focus();
  return;
 }
 
 if( !form.jtell.value )
 {
  alert( "전화번호를 적어주세요" );
  form.jtell.focus();
  return;
 }

 if( !form.jzipcode.value )
 {
  alert( "우편번호를 검색해주세요" );
  form.jzipcode.focus();
  return;
 }
 
 if( !form.jaddress2.value )
 {
  alert( "상세 주소를 적어주세요" );
  form.jaddress2.focus();
  return;
 }
form.submit();
}

function IDCheck(){
		 window.open("IDcheck.jsp","","width=400 height=150");
}
function NNCheck(){
	window.open("NNcheck.jsp","","width=400 height=150");
}

</script>

 <head>
 <title>게시판</title>
 </head>
 <body>
 <form name=joinform method=post action="join_ok.jsp">
  <table width="100%" cellpadding="0" cellspacing="0" border="0">
    <tr>
    <td align="center" colspan="4" >이름</td>
      <td><input name="jname" size="20" maxlength="50"></td>
     </tr>
     <tr>
    <td align="center" colspan="4" >닉네임</td>
      <td><input name="jnname" size="20" maxlength="50">
      <input type=button value="중복 확인" OnClick="javascript:NNCheck();" readonly/></td>
     </tr>
     <tr>
      <td align="center" colspan="4" >회원ID</td>
      <td><input name="jid" size="20" maxlength="50">
      <input type=button value="중복 확인" OnClick="javascript:IDCheck();" readonly/></td>
     </tr>
     
    <tr>
      <td align="center" colspan="4" >비밀번호</td>
      <td><input name="jpass" size="20" maxlength="50"></td>
    </tr>
    
    <tr>
      <td align="center" colspan="4" >비밀번호 확인</td>
      <td><input name="jpassok" size="20" maxlength="50"></td>
   </tr>
   
    <tr>
      <td align="center" colspan="4" >이메일</td>
      <td><input name="jemail" size="20" maxlength="50"></td>
    </tr>
    
    <tr>
        <td align="center" colspan="4" >핸드폰</td>
        <td><input name="jtell" size="20" maxlength="50"></td>
    </tr>
       <tr>
    <td align="center" colspan="4" >주소</td>
      <td><input id="jzipcode" name ="jzipcode" size="10" maxlength="100" readonly/>
       <input type=button value="검색" OnClick="javascript:popup();"></td>

     </tr> 
     
     <tr>
     <td align="center" colspan="4">&nbsp;</td>
      <td><input id="jaddress1" name ="jaddress1" size="50" maxlength="50">&nbsp;<input id="jaddress2" name ="jaddress2" size="50" maxlength="50"></td>
     </tr> 
    <tr>
      <td colspan="2"><input type=button value="등록" OnClick="javascript:JoinCheck();">
     </tr>
    </table>
    </form>
</body>
</html>