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
      <td align="center" width="130">글번호</td>
      <td width="300"><%=idx%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="150">사업자 등록번호</td>
      <td width="300"><%=vo.getLicenseenumber()%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">시장이름</td>
      <td width="300"><%=vo.getMname()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">가게이름</td>
      <td width="300"><%=vo.getSname()%></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">가게 전화번호</td>
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
      <td align="center" width="130">대표메뉴</td>
      <td width="300"><%=vo.getMenu()%></td>
      <td width="0">&nbsp;</td>
     </tr>
         <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
           <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">영업시간</td>
      <td width="300"><%=vo.getTime()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
         <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">휴무일</td>
      <td width="300"><%=vo.getDayoff()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
             <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="130">방송</td>
      <td width="300"><%=vo.getOnair()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     
       </div>
                
   <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399">
 		<input type="button" value="후기쓰기" OnClick="window.location='../write.jsp'"/>
	<input type=button value="한줄평" OnClick="window.location='list.jsp'">
	<input type=button value="목록" OnClick="window.location='approvelist.jsp'">
	<input type=button value="게시판으로 이동" OnClick="window.location='../board/list.jsp'">
      <td width="0">&nbsp;</td>
     </tr>

 </table>
</body>
 </html>

