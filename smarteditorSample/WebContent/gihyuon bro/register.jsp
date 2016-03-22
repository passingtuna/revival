<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<script language = "javascript">  // 자바 스크립트 시작

	function writeCheck()
	  {
	   var form = document.writeform;

	   if( !form.id.value )   // form 에 있는 name 값이 없을 때
	   {
	    alert( "ID 적어주세요" ); // 경고창 띄움
	    form.id.focus();   // form 에 있는 name 위치로 이동
	    return;
	   }
	   
	   if( !form.pw.value )
	   {
	    alert( "비밀번호를 적어주세요" );
	    form.pw.focus();
	    return;
	   }
	 
	  if( !form.licenseenumber.value )
	   {
	    alert( "사업자 등록번호 10자리를 적어주세요" );
	    form.licenseenumber.focus();
	    return;
	   }
	   
  if( !form.zone.value )
	   {
	    alert( "지역을  적어주세요" );
	    form.zone.focus();
	    return;
	   }
	   
	  if( !form.mname.value )
	   {
	    alert( "시장 이름을 적어주세요" );
	    form.mname.focus();
	    return;
	   }
	  if( !form.sname.value )
	   {
	    alert( "가게 이름을  적어주세요" );
	    form.sname.focus();
	    return;
	   }
	  if( !form.tel1.value )
	   {
	    alert( "전화번호를  적어주세요" );
	    form.tel1.focus();
	    return;
	   }
	  if( !form.tel2.value )
	   {
	    alert( "전화번호를 빈칸 없이  적어주세요" );
	    form.tel2.focus();
	    return;
	   }
	  if( !form.tel3.value )
	   {
	    alert( "전화번호를 빈칸 없이  적어주세요" );
	    form.tel3.focus();
	    return;
	   }
	  if( !form.email1.value )
	   {
	    alert( "email  적어주세요" );
	    form.email1.focus();
	    return;
	   }
	  if( !form.email2.value )
	   {
	    alert( "email을 빈칸 없이  적어주세요" );
	    form.emai2.focus();
	    return;
	   }
	  if( !form.menu.value )
	   {
	    alert( "대표메뉴를  적어주세요" );
	    form.menu.focus();
	    return;
	   }
	  if( !form.price.value )
	   {
	    alert( "가격을  적어주세요" );
	    form.price.focus();
	    return;
	   }
	  if( !form.time.value )
	   {
	    alert( "영업시간  적어주세요" );
	    form.time.focus();
	    return;
	   }
	  if( !form.time1.value )
	   {
	    alert( "영업시간 빈칸 없이  적어주세요" );
	    form.time1.focus();
	    return;
	   }

	  if( !form.dayoff.value )
	   {
	    alert( "휴무일을 적어주세요" );
	    form.dayoff.focus();
	    return;
	   }
	 /*  if( !form.memo.value )
	   {
	    alert( "메모를  적어주세요" );
	    form.memo.focus();
	    return;
	   } */
	  form.submit();
	  }
 </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<style>
.join{
  position: relative;
  top: 20px;
  left: 250px;
  width: 750px;
  background-color: #ffffff;
}

#title{
	font-size: 25pt;
	margin-bottom: -30px;
	text-align: center;s
	}

</style>

<html>

 <head>
 <title>가게등록</title>

 </head>
 <body bgcolor="skyblue">
				<p id="title">가게등록</p></br></br><hr>	 <title>가게등록</title>
<div class="join">
 <table  style="border-spacing:13px;"> 
 		<form name=writeform method=post action="register_ok.jsp">
		<tr>
		<td align="left"><label style="font-size:13px;">*표시정보는 필수 입력 사항입니다. </label></td>
		</tr>
		<tr>
			<td align="left">*아이디</td>
			<td><input type="text" name="id" size="14" placeholder="아이디">
		</tr>
		
		<tr>
			<td align="left">*비밀번호</td>
			<td><input type="password" name="pw" size="20" placeholder="비밀번호">
			</td>
		</tr>
		<tr>
			<td align="left">*사업자등록번호</td>
			<td><input type="text" size="40" name="licenseenumber"
				  maxlength="10" placeholder="사업자등록번호(10자리)" /> <input type="button" value=" 인증 " />
			</td>
		</tr>
		<tr>
			<td align="left">*지역</td>
			<td><select name="zone" onchange="setzone(this.value)">
					<option selected>선택</option>
					<option value="13">경기도</option>
					<option value="12">인천광역시</option>
					<option value="11">서울 특별시</option>
					<option value="14">부천시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					<option value="15">안산시</option>
					</select> 
					
		</tr>
		
		<tr>
			<td align="left">*시장이름</td>
			<td><select name="mname" onchange="setmname(this.value)">
					<option selected>선택</option>
					<option value="광장시장">광장시장</option>
					<option value="평화시장">평화시장</option>
					<option value="거북시장">거북시장</option>
					<option value="강남시장">강남시장</option>
					<option value="상동시장">상동시장</option>
					<option value="모래네시장">모래네시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
					<option value="신현시장">신현시장</option>
	</select> 
					
		</tr>

		</tr>
		<tr>
			<td align="left">*가게이름</td>
			<td><input type="text" size="14" name="sname" placeholder="가게이름">
		
		</tr>
		<tr>
			<td align="left">*가게주소</td>
			<td><input type="text" size="4" name="zip_num1" readonly>- 
			<input type="text" size="4" name="zip_num2" readonly> 
				<input type="button" value="우편번호찾기" onclick="post_zip()"><br>
				<input type="text" size="45" name="addr1" readonly><br>
				<input type="text" size="45" name="addr2" placeholder="상세주소"></td>
		</tr>
			<tr>
			<td align="left">*위치등록</td>
		<td> <input type="button" value=" 등록 "  OnClick="window.location ='register_map.jsp'"> </td>			
			</tr>
		
			<tr>
			<td align="left">*가게전화번호</td>
			<td><select name="tel1" onchange="setTel1(this.value)">
					<option selected>선택</option>
					<option value="02">02</option>
					<option value="051">051</option>
					<option value="053">053</option>
					<option value="032">032</option>
					<option value="062">062</option>
					<option value="042">042</option>
					<option value="052">052</option>
					<option value="044">044</option>
					<option value="031">031</option>
					<option value="033">033</option>
					<option value="043">043</option>
					<option value="041">041</option>
					<option value="063">063</option>
					<option value="061">061</option>
					<option value="054">054</option>
					<option value="055">055</option>
					<option value="064">064</option>
			</select> 
			- <input type="tel" name="tel2" size="4"> 
			- <input type=tel name="tel3" size="4"></td>
		</tr>
		
		<tr>
			 <td align="left"> 이메일</td>
			<td><input type="text" size="14" name="email1"> @ &nbsp;
				<select name="email2" onchange="setEmail(this.value)">
					<option selected>직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="nate.com">nate.com</option>
					<option value="hotmail.com">hotmail.com</option>
					<option value="yahoo.com">yahoo.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="gmail.com">daum.net</option>
				</select></td>
		</tr>
		
		<tr>	
		 <td align="left"> 대표메뉴</td>
			<td><input type="text" size="14" name="menu" placeholder="메뉴입력"> 가격 <input type="text" size="14" name="price" placeholder="ex) 3,000원"> </td>
		</tr>
		<tr>
			<td align="left">*영업시간</td>
			<td><select name="time" onchange="settime(this.value)">
					<option selected>선택</option>
					<option value="AM:00">AM:00</option>
					<option value="AM:01">AM:01</option>
					<option value="AM:02">AM:02</option>
					<option value="AM:03">AM:03</option>
					<option value="AM:04">AM:04</option>
					<option value="AM:05">AM:05</option>
					<option value="AM:06">AM:06</option>
					<option value="AM:07">AM:07</option>
					<option value="AM:08">AM:08</option>
					<option value="AM:09">AM:09</option>
					<option value="AM:10">AM:10</option>
					<option value="AM:11">AM:11</option>
					<option value="PM:12">PM:12</option>
					<option value="PM:13">PM:13</option>
					<option value="PM:14">PM:14</option>
					<option value="PM:15">PM:15</option>
					<option value="PM:16">PM:16</option>
					<option value="PM:17">PM:17</option>
					<option value="PM:18">PM:18</option>
					<option value="PM:19">PM:19</option>
					<option value="PM:20">PM:20</option>
					<option value="PM:21">PM:21</option>
					<option value="PM:22">PM:22</option>
					<option value="PM:23">PM:23</option>
			</select> ~ <select name="time1" onchange="settime1(this.value)">
					<option selected>선택</option>
					<option value="AM:00">AM:00</option>
					<option value="AM:01">AM:01</option>
					<option value="AM:02">AM:02</option>
					<option value="AM:03">AM:03</option>
					<option value="AM:04">AM:04</option>
					<option value="AM:05">AM:05</option>
					<option value="AM:06">AM:06</option>
					<option value="AM:07">AM:07</option>
					<option value="AM:08">AM:08</option>
					<option value="AM:09">AM:09</option>
					<option value="AM:10">AM:10</option>
					<option value="AM:11">AM:11</option>
					<option value="PM:12">PM:12</option>
					<option value="PM:13">PM:13</option>
					<option value="PM:14">PM:14</option>
					<option value="PM:15">PM:15</option>
					<option value="PM:16">PM:16</option>
					<option value="PM:17">PM:17</option>
					<option value="PM:18">PM:18</option>
					<option value="PM:19">PM:19</option>
					<option value="PM:20">PM:20</option>
					<option value="PM:21">PM:21</option>
					<option value="PM:22">PM:22</option>
					<option value="PM:23">PM:23</option>
			</select>
		</tr> 
		<tr>
			<td align="left">*휴무일</td>
			<td><input type="text" size="20" name="dayoff" placeholder="ex)매달 몇번째주 수요일"><br><br>
	</tr>
 	<tr>
			<td align="left">방송</td>
			<td><input type="radio" name="onair" value="O">방송O
			<input type="radio" name="onair" value="X">방송X
		</tr>
		<tr>
			  <td align="left">메모</td>
			<td><input type="text" size="50" name="memo" placeholder="요청시 남기실 메모">
		
		</tr>
		<tr> 
			<td colspan="2" align="center"><br>
			<input type=button value="취소" OnClick="javascript:history.back(-1)">
					<input type=button value="가입" OnClick="javascript:writeCheck();"><br><br><br></td>	
				</tr>
			</table>
		</div>
		</form>
		</body> 
		</html>
		
		


