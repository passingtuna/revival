<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.*" %>
<jsp:useBean id="vo1" class="board.VO"/>
<jsp:useBean id="dao" class="board.DAO"/>

<%
request.setCharacterEncoding("EUC-KR");
	int idx;
    String sidx = request.getParameter("idx");
	if(sidx == null){
		idx = vo1.getStaticnum();
	}
	else{
		idx = Integer.parseInt(request.getParameter("idx"));
		vo1.setStaticnum(idx);
	}
	 int pg;
	String Spg = request.getParameter("pg");
	if(Spg == null){
	pg = vo1.getSpg();
	}
	else{
	    pg = Integer.parseInt(request.getParameter("pg"));
	    vo1.setSpg(pg);
	}

	VO vo = dao.getView(idx);
	dao.UpdateHit(idx);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>
 </head>
 <body>
<form name=form method=post>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
      <tr>
      <td>내 용</td>
     </tr>
    </table>
   <table width="100%">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">글번호</td>
      <td width="319"><%=idx%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">조회수</td>
      <td width="319"><%=vo.getHit()%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">이름</td>
      <td width="319"><%=vo.getName()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319"><%=vo.getTime()%></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319"><%=vo.getTitle()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <tr>
      <td width="0"></td>
                   <td width="399" colspan="2" height="200"><%=vo.getMemo() %>
                </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
     <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399"><input type=button value="글쓰기"  OnClick="window.location='../write.jsp'">
	<input type=button value="목록" OnClick="javascript:history.back(-1)">
	<input type=button value="수정" OnClick="window.location='../modify.jsp?idx=<%=idx%>&pg=<%=pg%>'">
	<input type=button value="삭제" OnClick="window.location='delete.jsp?idx=<%=idx%>&pg=<%=pg%>'">
      <td width="0">&nbsp;</td>
     </tr>
    </table>
    <table width="100%">
                        <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
    </table>
    </form>
 <jsp:include page="TailList.jsp"></jsp:include>
 </table>
</body> 
</html>