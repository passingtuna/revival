<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo1" class="board.VO"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function checkidClose(ID){
	opener.joinform.jid.value = ID;
	window.close();
	opener.joinform.jpass.focus();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="IDcheck.jsp">
<%
String ID = request.getParameter("ID");
int CID = dao.IDFound(ID);
if(ID ==null){
%>
아이디:<input type="text" name="ID" style="ime-mode:disabled"></input>
<input type="submit" value="중복체크"></input>
<%	
}

if(CID>=1){
%>

이미 <%=ID %> 아이디가 있습니다 다른 아이디를 선택해주세요 <br><br>
아이디:<input type="text" name="ID" style="ime-mode:disabled"></input>
<input type="submit" value="중복체크"></input>

<%
}
else if (CID==0&&ID!=null)
	{
	%>
	
	 <%=ID %> 사용가능한 아이디입니다 사용하시겠습니까?
	<input type="submit" value="다른 아이디 선택"></input>
	<input type ="button" value="현제 아이디 선택" onClick = "javascript:checkidClose('<%=ID %>')">
	
	<%
	
	} 
 %>
</form>
</body>
</html>