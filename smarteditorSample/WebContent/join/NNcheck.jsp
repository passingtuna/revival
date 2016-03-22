<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo1" class="board.VO"/>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function checkidClose(ID){
	opener.joinform.jnname.value = ID;
	window.close();
	opener.joinform.jid.focus();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="NNcheck.jsp">
<%
String ID = request.getParameter("ID");
int CID = dao.NNFound(ID);
if(ID ==null){
%>
닉네임:<input type="text" name="ID"></input>
<input type="submit" value="중복체크"></input>
<%	
}

if(CID>=1){
%>

이미 <%=ID %> 닉네임이 있습니다 다른 닉네임을 선택해주세요 <br><br>
아이디:<input type="text" name="ID"></input>
<input type="submit" value="중복체크"></input>

<%
}
else if (CID==0&&ID!=null)
	{
	%>
	
	 <%=ID %> 사용가능한 닉네임입니다 사용하시겠습니까?
	<input type="submit" value="다른 닉네임 선택"></input>
	<input type ="button" value="현재 닉네임 선택" onClick = "javascript:checkidClose('<%=ID %>')">
	
	<%
	
	} 
 %>
</form>
</body>
</html>