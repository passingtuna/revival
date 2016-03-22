<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo1" class="board.VO"/>
<%	
	int total = dao.Scount();
	ArrayList<VO> alist = dao.getShopList();
	int size = alist.size();
	int size2 = size;
	
	final int ROWSIZE = 50;
	final int BLOCK = 5;
	int indent = 0;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int end = (pg*ROWSIZE);
	
	int allPage = 0;

	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;
	
	allPage = (int)Math.ceil(total/(double)ROWSIZE);
	
	if(endPage > allPage) {
		endPage = allPage;
	}
	
	size2 -=end;
	if(size2 < 0) {
		end = size;
	}
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>�Խ���</title>
 </head>
 <body>
<form method=post action=result.jsp>
<div align = "center" > <font size = "5" color = "skyblue"> <td id="title">���� ��� ��Ȳ</td></font></div>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<div align = "right">  
   
	<!-- <form action="findidProc.jsp" method="post">
		<select name="how">
		<option value="�����̸�">�����̸�</option>
		<option value="��ǥ�޴�">��ǥ�޴�</option>
		<option value="���ſ���">���ſ���</option>
		</select>&nbsp;-->
		<align=center>�����̸�:
		<input type=text name="name" placeholder="���� �̸��� �Է����ּ���" >
		<input type="submit" value="�˻�">
		<br></div>
		
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr>
 <td>&nbsp;</td>
   <td width="0">��ȣ</td>
		   <td width="0">����� ��� ��ȣ</td>
		   <td width="0">�����̸�</td>
		   <td width="0">�����̸�</td>
		     <td width="0">��ȭ��ȣ</td>
		     <td width="0">�����ð�</td>
		   <td width="0">�̸���</td>
		      <td width="0">��ǥ�޴�</td>
		   <td width="0">�޹���</td>
		   <td width="0">���</td>

  </tr>
<%
if(total==0) {
%>
 		<tr align="center" bgcolor="#FFFFFF" height="30">
 	   <td colspan="6">��ϵ� ���԰� �����ϴ�.</td>
 	  </tr>
 <%
 	} else {
 		for(int i=ROWSIZE*(pg-1); i<end;i++){
			VO vo = alist.get(i);
			indent = vo.getIndent();
			int idx = vo.getSnum();
%>
	<form name=writeform method=post action="view.jsp?sname=<%=vo.getSname()%>">
	<tr height="25" align="center">
	<td>&nbsp;</td>
<td align="center"><a href="apporveview.jsp?idx=<%=idx%>"> <%=vo.getSnum()%></a></td>
	<td align="center"><%=vo.getLicenseenumber() %></td>
	<td align="center"><%=vo.getMname()  %></td>
	<td align="center"><%=vo.getSname() %></td>
	<td align="center"><%=vo.getItel() %></td>
	<td align="center"><%=vo.getStime() %></td>
	<td align="center"><%=vo.getEmail() %></td>
	<td align="center"><%=vo.getMenu() %></td>
	<td align="center"><%=vo.getDayoff() %></td> 
	<td align="center"><%=vo.getOnair() %></td> 
<% }} %>
<td>&nbsp;</td>


</table>



<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr><td colspan="4" height="5"></td></tr>
<tr>
<td align="center">
	<%
		if(pg>BLOCK) {
	%>
		[<a href="approvelist.jsp?pg=1">����</a>]
		[<a href="approvelist.jsp?pg=<%=startPage-1%>">��</a>]
	<%
		}
	%>
	<%
		for(int i=startPage; i<= endPage; i++){
			if(i==pg){
	%>
				<u><b>[<%=i %>]</b></u>
	<%
			}else{
	%>
				[<a href="approvelist.jsp?pg=<%=i %>"><%=i %></a>]
	<%
			}
		}
	%>
	
	<%
		if(endPage<allPage){
	%>
		[<a href="approvelist.jsp?pg=<%=endPage+1%>">��</a>]
		[<a href="approvelist.jsp?pg=<%=allPage%>">����</a>]
	<%
		}
	%>
	</td>
	</tr>
<tr align="center">
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="center">
  <td><input type=button value="�����ϱ�" OnClick="window.location='���� ������'"></td>
  </tr>
</table>
</body>
</html>