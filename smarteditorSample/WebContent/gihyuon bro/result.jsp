<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("euc-kr"); %>


<html>
  <head>
    <title>검색 결과</title>
      <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
  </head>


    <body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    	<div align = "center" > <font size = "5" color = "skyblue"> <td id="title">검색 결과</td></font></div>
    	
		<table width="100%" cellpadding="0" cellspacing="0" border="0">		
		  <tr height="10"><td width="10"></td></tr>
		 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
		   <td width="7"><img src="img/table_left.gif" width=5 height="30" /></td>
		<tr><td width ="0">글 번호 </td> 
		<td width ="0">사업자 등록번호</td> 
	 	<td width="0">시장이름</td>
		<td width="0">가게이름</td>
		<td width="0">전화번호</td>
		<td width="0">대표메뉴</td>
	 	<td width="0">E-mail</td>
		 <td width="0">영업시간</td>
		 <td width="0">휴무일</td>
		 <td width="0">방송</td>
		           
			<td width="0"><img src="img/table_right.gif" width="10" height="30" /></td>
		  </tr>
		   <tr height="1" bgcolor="#D2D2D2"><td colspan=20></td></tr>
		      <%
      Class.forName("oracle.jdbc.driver.OracleDriver");
  			String url = "jdbc:oracle:thin:@localhost:1521:orcl";


                String strName = request.getParameter("name");
        String strSql = "SELECT * FROM APPROVE WHERE MNAME LIKE '%"+request.getParameter("name")+"%'";


        
        Connection conn = DriverManager.getConnection(url,"TEST","a1234");
    	Statement stmt = conn.createStatement();


                      ResultSet rs = stmt.executeQuery(strSql);


           while(rs.next()) {
        String num = rs.getString("NUM");
        String licenseenumber = rs.getString("licenseenumber");
        String mname = rs.getString("MNAME");
        String sname = rs.getString("sname");
        String itel = rs.getString("itel");
        String time = rs.getString("time");
        String email = rs.getString("email");
        String menu = rs.getString("menu");
        String dayoff = rs.getString("dayoff");
        String onair = rs.getString("onair");
        
     
    
       
       out.println ("<td>" + num + "</td>"); 		
       out.println ("<td>" + licenseenumber + "</td>");
       out.println ("<td>" + mname + "</td>");
       out.println ("<td>" + sname + "</td>");
       out.println ("<td>" + itel + "</td>");
       out.println ("<td>" + time + "</td>");
       out.println ("<td>" + menu + "</td>");
       out.println ("<td>" + email + "</td>");
       out.println ("<td>" + dayoff + "</td>");
       out.println ("<td>" + onair + "</td>");
       
     
        out.println ("</tr>");
      }


             rs.close();
      stmt.close();
      conn.close();
      %>
    
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="center">
  <td><input type=button value="뒤로" OnClick="window.location='approvelist.jsp'"></td>
  </tr>

     </table>
    </table>

  </body>
</html>