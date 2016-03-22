<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo" class="board.VO"/>
<jsp:setProperty name="vo" property="*" />

<%
request.setCharacterEncoding("UTF-8");
	dao.Join(vo);
%>

  <script language=javascript>
  
   self.window.alert("회원가입을 완료했습니다.");
   location.href="join_complete.jsp";

  </script>