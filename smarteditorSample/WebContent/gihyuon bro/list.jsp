<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��� ��û ��Ȳ</title>
</head>
<body>
		<div align = "center" > <font size = "5" color = "skyblue"> <td id="title">��� ��û��Ȳ</td></font></div>
	
 <%
 	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	int total = 0;
	
	try {
		Connection conn = DriverManager.getConnection(url,"TUNA","1234"); /* ����Ŭ DB ���� */
		Statement stmt = conn.createStatement(); /*��ü����*/

		String sqlCount = "SELECT COUNT(*) FROM MARKET"; /* ���̺� ã�� */
		ResultSet rs = stmt.executeQuery(sqlCount); /* DB����  */
		
		if(rs.next()){
			total = rs.getInt(1);
		}
		rs.close();
		out.print("��� ��û : " + total + "��");
		
		String sqlList = "SELECT NUM,ID,CODE,licenseenumber,MNAME,SNAME,ITEL,EMAIL,MENU,TIME,DAYOFF,ONAIR,MEMO from MARKET order by NUM ASC";
		rs = stmt.executeQuery(sqlList);  /* DB����  */
		
%>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="10"><td width="10"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="7"><img src="img/table_left.gif" width=5 height="30" /></td>
   <td width="0">��ȣ</td>
   <td width="0">ID</td>
     <td width="0">�����ڵ�</td>
   <td width="0">����� ��� ��ȣ</td>
   <td width="0">�����̸�</td>
   <td width="0">�����̸�</td>
     <td width="0">��ȭ��ȣ</td>
     <td width="0">�̸���</td>
   <td width="0">��ǥ�޴�</td>
      <td width="0">�����ð�</td>
   <td width="0">�޹���</td>
   <td width="0">���</td>
   <td width="0">�޸�</td>
   
   <td width="0"><img src="img/table_right.gif" width="10" height="30" /></td>
  </tr>
   <tr height="1" bgcolor="#D2D2D2"><td colspan=20></td></tr>
<%
	if(total==0) {
%>
	 		<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">��ϵ� ���� �����ϴ�.</td>
	 	  </tr>
<%
	 	} else {
	 		
		while(rs.next()) {
			int num = rs.getInt(1);
			String id = rs.getString(2);
			String code = rs.getString(3);
			String licenseenumber = rs.getString(4);
			String mname = rs.getString(5);
		 	String sname = rs.getString(6);
			String itel = rs.getString(7);
			String email = rs.getString(8);
			String menu = rs.getString(9);
			String time = rs.getString(10);
			String dayoff = rs.getString(11);
			String onair = rs.getString(12);
			String memo = rs.getString(13);
	
	%>
	<form name=writeform method=post action="view.jsp?sname=<%=sname%>">
	<tr height="25" align="center">
	<td>&nbsp;</td>
	<td align="center"><a href="view.jsp?num=<%=num%>"> <%=num%></td>  <!-- ��ȣ �� ��ũ�� �ɾ��� -->
	<td align="center"><%=id %></td>
	<td align="center"><%=code %></td>
	<td align="center"><%=licenseenumber %></td>
	<td align="center"><%=mname %></td>
	<td align="center"><%=sname %></td>
	<td align="center"><%=itel %></td>
	<td align="center"><%=email %></td>
	<td align="center"><%=menu %></td>
	<td align="center"><%=time %></td>
	<td align="center"><%=dayoff %></td> 
	<td align="center"><%=onair %></td> 
	<td align="center"><%=memo %></td> 
	

	<td>&nbsp;</td>
</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan=20></td></tr>
<% 
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
}
%>
 <tr height="1" bgcolor="#82B5DF"><td colspan=20 width="752"></td></tr>
 </table>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="center">
  <td><input type=button value="�����ϱ�" OnClick="window.location='���� ������'"></td>
  </tr>
</table>
</body>
</html>