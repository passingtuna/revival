<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo" class="board.VO"/>
<jsp:setProperty name="vo" property="*" />

<%	
request.setCharacterEncoding("EUC-KR");
	request.setCharacterEncoding("euc-kr");
    int idx = Integer.parseInt(request.getParameter("idx"));
	dao.tailWrite(vo, idx);
%>

  <script language=javascript>
   self.window.alert("�Է��� ���� �����Ͽ����ϴ�.");
   location.href="view.jsp";
  </script>