<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo" class="board.VO"/>
<jsp:setProperty name="vo" property="*" />

<%	
	request.setCharacterEncoding("UTF-8");
	dao.insertWrite(vo);
%>

  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="list.jsp";
  </script>