<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	 int num = Integer.parseInt(request.getParameter("num")); 
	 
	/* String sname = request.getParameter("sname"); 
	out.println(sname); */
	try {
		Connection conn = DriverManager.getConnection(url,"TEST","a1234");
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT NUM,ID,CODE,licenseenumber,MNAME,SNAME,ITEL,EMAIL,MENU,TIME,DAYOFF,ONAIR,MEMO FROM MARKET WHERE NUM=" + num;
		ResultSet rs = stmt.executeQuery(sql);
		 if(rs.next()){
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>
 </head>
 	
	 <body>
	 <div align = "center">
	 <meta charset="UTF-8">
		<form name="frm1" method="post" action="approve_ok.jsp">

   <table width="500"> 
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td>내 용</td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
   
    </table>
   <table width="413">
   
      <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width=200>글번호:</td>
      <td width="319"><input type="text" name="num" size="10" value='<%=num%>' /></td>
      <td width="0">&nbsp;</td>
     </tr>
 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
   
      <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">시장번호:</td>
      <td width="300"><input type="text" name="code" size="15" value='<%=code%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
    <tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">사업자등록번호:</td>
      <td width="300"><input type="text" name="licenseenumber" size="15" value='<%=licenseenumber%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
   <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">시장이름:</td>
      <td width="300"><input type="text" name="mname" size="15" value='<%=mname%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">가게이름:</td>
      <td width="300"><input type="text" name="sname" size="15" value='<%=sname%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">전화번호:</td>
      <td width="300"><input type="text" name="itel" size="15" value='<%=itel%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">전화번호:</td>
      <td width="300"><input type="text" name="email" size="15" value='<%=email%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
     
       <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">대표메뉴:</td>
      <td width="300"><input type="text" name="menu" size="15" value='<%=menu%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
 
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
  <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">영업시간:</td>
      <td width="300"><input type="text" name="time" size="15" value='<%=time%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>               
    
  <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">휴무일:</td>
      <td width="300"><input type="text" name="dayoff" size="15" value='<%=dayoff%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
       <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">방송:</td>
      <td width="300"><input type="text" name="onair" size="15" value='<%=onair%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
   
  <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">메모:</td>
      <td width="300"><input type="text" name="memo" size="15" value='<%=memo%>' /></td>    
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <% 
 	stmt.executeUpdate(sql);
 	rs.close();
 	stmt.close();
 	conn.close();
	 	} 
	}catch(SQLException e) {
}

%>
     <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399">
 		<input type="submit" value="승인" />
	<input type=button value="목록" OnClick="window.location='list.jsp'">
	<input type=button value="삭제" OnClick="window.location='delete_ok.jsp?num=<%=num%>'">
      <td width="0">&nbsp;</td>
     </tr>
     </form>
    </table>
   </td>
  </tr>
 </table>
 </div>

<script>

</script>

  <script src="http://code.jquery.com/jquery-1.9.0.js"></script>
</body>

 </html>

