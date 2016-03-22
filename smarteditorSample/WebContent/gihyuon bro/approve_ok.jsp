<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>승인</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";

   		request.setCharacterEncoding("UTF-8");  //한글이 깨지지 않도록 UTF-8으로 받음. getParameter위에 써야함!!
     	String num = request.getParameter("num");
	  	String licenseenumber = request.getParameter("licenseenumber");
	 	String mname = request.getParameter("mname");
	 	String sname = request.getParameter("sname"); //write.jsp에서 memo에 입력한 데이터값
	 	String itel = request.getParameter("itel"); 
	 	String email = request.getParameter("email");
	 	String menu = request.getParameter("menu");
	 	String time = request.getParameter("time");
	 	String dayoff = request.getParameter("dayoff");
	 	String onair = request.getParameter("onair"); 
 
try {	
		Connection conn = DriverManager.getConnection(url,"TEST","a1234");
	
		String sql = "INSERT INTO APPROVE(NUM,licenseenumber,MNAME,SNAME,ITEL,EMAIL,MENU,TIME,DAYOFF,ONAIR) VALUES('"+num+"','"+licenseenumber+"','"+mname+"','"+sname+"','"+itel+"','"+time+"','"+email+"','"+menu+"','"+dayoff+"','"+onair+"')";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate(sql);
		
		String sql2 = "DELETE FROM MARKET WHERE NUM=" + num;	//삭제
		 pstmt.executeUpdate(sql2);
		   pstmt.close();
		   conn.close();
		
} catch(SQLException e) {
	out.println( e.toString() );
	}  

%>
	<script language=javascript>
   self.window.alert("선택한 글을 승인 하였습니다.");
   location.href="list.jsp"; 
</script>
</body>
</html> 