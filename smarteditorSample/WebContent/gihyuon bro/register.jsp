<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<script language = "javascript">  // �ڹ� ��ũ��Ʈ ����

	function writeCheck()
	  {
	   var form = document.writeform;

	   if( !form.id.value )   // form �� �ִ� name ���� ���� ��
	   {
	    alert( "ID �����ּ���" ); // ���â ���
	    form.id.focus();   // form �� �ִ� name ��ġ�� �̵�
	    return;
	   }
	   
	   if( !form.pw.value )
	   {
	    alert( "��й�ȣ�� �����ּ���" );
	    form.pw.focus();
	    return;
	   }
	 
	  if( !form.licenseenumber.value )
	   {
	    alert( "����� ��Ϲ�ȣ 10�ڸ��� �����ּ���" );
	    form.licenseenumber.focus();
	    return;
	   }
	   
  if( !form.zone.value )
	   {
	    alert( "������  �����ּ���" );
	    form.zone.focus();
	    return;
	   }
	   
	  if( !form.mname.value )
	   {
	    alert( "���� �̸��� �����ּ���" );
	    form.mname.focus();
	    return;
	   }
	  if( !form.sname.value )
	   {
	    alert( "���� �̸���  �����ּ���" );
	    form.sname.focus();
	    return;
	   }
	  if( !form.tel1.value )
	   {
	    alert( "��ȭ��ȣ��  �����ּ���" );
	    form.tel1.focus();
	    return;
	   }
	  if( !form.tel2.value )
	   {
	    alert( "��ȭ��ȣ�� ��ĭ ����  �����ּ���" );
	    form.tel2.focus();
	    return;
	   }
	  if( !form.tel3.value )
	   {
	    alert( "��ȭ��ȣ�� ��ĭ ����  �����ּ���" );
	    form.tel3.focus();
	    return;
	   }
	  if( !form.email1.value )
	   {
	    alert( "email  �����ּ���" );
	    form.email1.focus();
	    return;
	   }
	  if( !form.email2.value )
	   {
	    alert( "email�� ��ĭ ����  �����ּ���" );
	    form.emai2.focus();
	    return;
	   }
	  if( !form.menu.value )
	   {
	    alert( "��ǥ�޴���  �����ּ���" );
	    form.menu.focus();
	    return;
	   }
	  if( !form.price.value )
	   {
	    alert( "������  �����ּ���" );
	    form.price.focus();
	    return;
	   }
	  if( !form.time.value )
	   {
	    alert( "�����ð�  �����ּ���" );
	    form.time.focus();
	    return;
	   }
	  if( !form.time1.value )
	   {
	    alert( "�����ð� ��ĭ ����  �����ּ���" );
	    form.time1.focus();
	    return;
	   }

	  if( !form.dayoff.value )
	   {
	    alert( "�޹����� �����ּ���" );
	    form.dayoff.focus();
	    return;
	   }
	 /*  if( !form.memo.value )
	   {
	    alert( "�޸�  �����ּ���" );
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
 <title>���Ե��</title>

 </head>
 <body bgcolor="skyblue">
				<p id="title">���Ե��</p></br></br><hr>	 <title>���Ե��</title>
<div class="join">
 <table  style="border-spacing:13px;"> 
 		<form name=writeform method=post action="register_ok.jsp">
		<tr>
		<td align="left"><label style="font-size:13px;">*ǥ�������� �ʼ� �Է� �����Դϴ�. </label></td>
		</tr>
		<tr>
			<td align="left">*���̵�</td>
			<td><input type="text" name="id" size="14" placeholder="���̵�">
		</tr>
		
		<tr>
			<td align="left">*��й�ȣ</td>
			<td><input type="password" name="pw" size="20" placeholder="��й�ȣ">
			</td>
		</tr>
		<tr>
			<td align="left">*����ڵ�Ϲ�ȣ</td>
			<td><input type="text" size="40" name="licenseenumber"
				  maxlength="10" placeholder="����ڵ�Ϲ�ȣ(10�ڸ�)" /> <input type="button" value=" ���� " />
			</td>
		</tr>
		<tr>
			<td align="left">*����</td>
			<td><select name="zone" onchange="setzone(this.value)">
					<option selected>����</option>
					<option value="13">��⵵</option>
					<option value="12">��õ������</option>
					<option value="11">���� Ư����</option>
					<option value="14">��õ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					<option value="15">�Ȼ��</option>
					</select> 
					
		</tr>
		
		<tr>
			<td align="left">*�����̸�</td>
			<td><select name="mname" onchange="setmname(this.value)">
					<option selected>����</option>
					<option value="�������">�������</option>
					<option value="��ȭ����">��ȭ����</option>
					<option value="�źϽ���">�źϽ���</option>
					<option value="��������">��������</option>
					<option value="�󵿽���">�󵿽���</option>
					<option value="�𷡳׽���">�𷡳׽���</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
					<option value="��������">��������</option>
	</select> 
					
		</tr>

		</tr>
		<tr>
			<td align="left">*�����̸�</td>
			<td><input type="text" size="14" name="sname" placeholder="�����̸�">
		
		</tr>
		<tr>
			<td align="left">*�����ּ�</td>
			<td><input type="text" size="4" name="zip_num1" readonly>- 
			<input type="text" size="4" name="zip_num2" readonly> 
				<input type="button" value="�����ȣã��" onclick="post_zip()"><br>
				<input type="text" size="45" name="addr1" readonly><br>
				<input type="text" size="45" name="addr2" placeholder="���ּ�"></td>
		</tr>
			<tr>
			<td align="left">*��ġ���</td>
		<td> <input type="button" value=" ��� "  OnClick="window.location ='register_map.jsp'"> </td>			
			</tr>
		
			<tr>
			<td align="left">*������ȭ��ȣ</td>
			<td><select name="tel1" onchange="setTel1(this.value)">
					<option selected>����</option>
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
			 <td align="left"> �̸���</td>
			<td><input type="text" size="14" name="email1"> @ &nbsp;
				<select name="email2" onchange="setEmail(this.value)">
					<option selected>�����Է�</option>
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
		 <td align="left"> ��ǥ�޴�</td>
			<td><input type="text" size="14" name="menu" placeholder="�޴��Է�"> ���� <input type="text" size="14" name="price" placeholder="ex) 3,000��"> </td>
		</tr>
		<tr>
			<td align="left">*�����ð�</td>
			<td><select name="time" onchange="settime(this.value)">
					<option selected>����</option>
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
					<option selected>����</option>
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
			<td align="left">*�޹���</td>
			<td><input type="text" size="20" name="dayoff" placeholder="ex)�Ŵ� ���°�� ������"><br><br>
	</tr>
 	<tr>
			<td align="left">���</td>
			<td><input type="radio" name="onair" value="O">���O
			<input type="radio" name="onair" value="X">���X
		</tr>
		<tr>
			  <td align="left">�޸�</td>
			<td><input type="text" size="50" name="memo" placeholder="��û�� ����� �޸�">
		
		</tr>
		<tr> 
			<td colspan="2" align="center"><br>
			<input type=button value="���" OnClick="javascript:history.back(-1)">
					<input type=button value="����" OnClick="javascript:writeCheck();"><br><br><br></td>	
				</tr>
			</table>
		</div>
		</form>
		</body> 
		</html>
		
		


