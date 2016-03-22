<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>  
			
<%
	request.setCharacterEncoding("euc-kr");
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "";
	String pass = "";
	String password = null;
	int num = Integer.parseInt(request.getParameter("num"));
	
	/* String passw = request.getParameter("password"); */
	
	try{		
		Connection conn = DriverManager.getConnection(url,"TEST","a1234");
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT PASSWORD FROM MARKET WHERE NUM=" + num;
		ResultSet rs = stmt.executeQuery(sql);
		
		 if(rs.next()){
				password = rs.getString(1);
		 }
		 
		/*  if(password.equals(passw)) */ {
			   			
			sql = "DELETE FROM MARKET WHERE NUM=" + num;	
			stmt.executeUpdate(sql);	 
%>
  			<script language=javascript>
   				self.window.alert("해당 글을 삭제하였습니다.");
   				location.href="list.jsp";
  			</script>

<%
		rs.close();
		stmt.close();
		conn.close();
		
		}

 	} catch(SQLException e) {
		out.println( e.toString() );
	} 

%>
