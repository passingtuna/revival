<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="board.*" %>
<jsp:useBean id="dao" class="board.DAO"/>

<%
int idx = Integer.parseInt(request.getParameter("idx"));
VO vo = dao.getShopView(idx);
%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align = "center">
<table width=500>
<div align = "center">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">�۹�ȣ</td>
      <td width="300"><%=idx%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="150">����� ��Ϲ�ȣ</td>
      <td width="300"><%=vo.getLicenseenumber()%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">�����̸�</td>
      <td width="300"><%=vo.getMname()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">�����̸�</td>
      <td width="300"><%=vo.getSname()%></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">���� ��ȭ��ȣ</td>
      <td width="300"><%=vo.getItel()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
        
           <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">email</td>
      <td width="300"><%=vo.getEmail()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
            <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">��ǥ�޴�</td>
      <td width="300"><%=vo.getMenu()%></td>
      <td width="0">&nbsp;</td>
     </tr>
         <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
           <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">�����ð�</td>
      <td width="300"><%=vo.getTime()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
         <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">�޹���</td>
      <td width="300"><%=vo.getDayoff()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
             <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">���</td>
      <td width="300"><%=vo.getOnair()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     
       </div>
                
   <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399">
 		<input type="button" value="�ı⾲��" OnClick="window.location='../write.jsp'"/>
	<input type=button value="������" OnClick="window.location='list.jsp'">
	<input type=button value="���" OnClick="window.location='approvelist.jsp'">
	<input type=button value="�Խ������� �̵�" OnClick="window.location='../board/list.jsp'">
      <td width="0">&nbsp;</td>
     </tr>

 </table>
</body>
 </html>

