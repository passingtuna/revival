<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ͽ�û</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr"); //�޾ƿ��� ������ �ѱ۷� ���ڵ��մϴ�.

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	
	String id = request.getParameter("id"); //write.jsp���� name�� �Է��� �����Ͱ�
	String pw = request.getParameter("pw");//write.jsp���� password�� �Է��� �����Ͱ�
	int licenseenumber = Integer.parseInt(request.getParameter("licenseenumber"));
	String zone = request.getParameter("zone");
	String mname = request.getParameter("mname");
	String sname = request.getParameter("sname"); //write.jsp���� memo�� �Է��� �����Ͱ�
	String tel1 = request.getParameter("tel1"); 
	String tel2 = request.getParameter("tel2"); 
	String tel3 = request.getParameter("tel3"); 
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String menu = request.getParameter("menu");
	String price = request.getParameter("price");
	String time = request.getParameter("time");
	String time1 = request.getParameter("time1");
	String dayoff = request.getParameter("dayoff");
	String memo = request.getParameter("memo");
	 String onair = request.getParameter("onair"); 
	
	try {	
		Connection conn = DriverManager.getConnection(url,"TEST","a1234");
	
		String sql = "INSERT INTO MARKET(NUM,ID,PASSWORD,CODE,licenseenumber,MNAME,SNAME,ITEL,EMAIL,MENU,TIME,DAYOFF,MEMO,ONAIR) VALUES(TEST.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, id);
	 	pstmt.setString(2, pw);
	 	pstmt.setString(3, zone + tel1);
		pstmt.setInt(4, licenseenumber);
		pstmt.setString(5, mname);
		pstmt.setString(6, sname);
		pstmt.setString(7, tel1 + "-" +tel2+"-"+tel3);
		pstmt.setString(8, email1+"@"+email2);
		pstmt.setString(9, menu+":"+price);	
		pstmt.setString(10, time+"~"+time1);
		pstmt.setString(11, dayoff);
		pstmt.setString(12, memo);
		 pstmt.setString(13, onair); 

		pstmt.execute();
		pstmt.close();
		conn.close();

} catch(SQLException e) {
	out.println( e.toString() );
	} 

%>
		 <!-- 	<script language=javascript>
		   self.window.alert("�Է��� ���� �����Ͽ����ϴ�.");
		   location.href="list.jsp"; 
		</script>  -->
	<%
			response.sendRedirect("welcom.jsp");			
%>
</body>
</html>