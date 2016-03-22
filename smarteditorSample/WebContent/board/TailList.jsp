<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo1" class="board.VO"/>
<%	
request.setCharacterEncoding("EUC-KR");
	int idx = vo1.getStaticnum();
	int total = dao.Tcount(idx);
	ArrayList<VO> alist = dao.getTailList(idx);
	int size = alist.size();
	int size2 = size;
	
	final int ROWSIZE = 20;
	final int BLOCK = 5;
	int indent = 0;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int end = (pg*ROWSIZE);
	
	int allPage = 0;

	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;
	
	allPage = (int)Math.ceil(total/(double)ROWSIZE);
	
	if(endPage > allPage) {
		endPage = allPage;
	}
	
	size2 -=end;
	if(size2 < 0) {
		end = size;
	}
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 
<script language = "javascript">  // 자바 스크립트 시작
function TailCheck()
  {
   var form = document.tailform;
   
   if( !form.tname.value )   // form 에 있는 name 값이 없을 때
   {
    alert( "이름을 적어주세요" ); // 경고창 띄움
    form.tname.focus();   // form 에 있는 name 위치로 이동
    return;
   }

  if( !form.tmemo.value )
   {
    alert( "내용을 적어주세요" );
    form.tmemo.focus();
    return;
   }
 
  form.submit();
  }
 </script>
 <title>게시판</title>
 </head>
 <body>
 <form name=tailform method=post action="tail_ok.jsp?idx=<%=idx%>">
  <table width="100%" cellpadding="0" cellspacing="0" border="0">
    <tr>
      <td align="center" width="95">덧글</td>
      <td width="0">&nbsp;</td>
     </tr>
    <tr>
      <td align="center" colspan="4" >내용</td>
      <td><input name="tmemo" size="50" maxlength="50"></td>
      <td align="center" colspan="20" >이름</td>
      <td><input name="tname" size="20" maxlength="50"></td>
      <td colspan="2"><input type=button value="등록" OnClick="javascript:TailCheck();">
     </tr>
    </table>
    </form>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr>
   <td width="73">댓글번호</td>
   <td width="379">내용</td>
   <td width="73">작성자</td>
   <td width="60">시간</td>
  </tr>
<%
if(total==0) {
%>
 		<tr align="center" bgcolor="#FFFFFF" height="30">
 	   <td colspan="6">등록된 글이 없습니다.</td>
 	  </tr>
 <%
 	} else {
 		for(int i=ROWSIZE*(pg-1); i<end;i++){
			VO vo = alist.get(i);
			indent = vo.getIndent();
%>
<tr height="25" align="center">
<td align="center"><%=vo.getTnum()%></td>
<td align="center"><%=vo.getTmemo()%></td>
<td align="center"><%=vo.getTname() %></td>
<td align="center"><%=vo.getTtime() %></td>
<tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
<% }} %>
<tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr><td colspan="4" height="5"></td></tr>
<tr>
<td align="center">
	<%
		if(pg>BLOCK) {
	%>
		[<a href="TailList.jsp?pg=1">◀◀</a>]
		[<a href="TailList.jsp?pg=<%=startPage-1%>">◀</a>]
	<%
		}
	%>
	<%
		for(int i=startPage; i<= endPage; i++){
			if(i==pg){
	%>
				<u><b>[<%=i %>]</b></u>
	<%
			}else{
	%>
				[<a href="TailList.jsp?pg=<%=i %>"><%=i %></a>]
	<%
			}
		}
	%>
	
	<%
		if(endPage<allPage){
	%>
		[<a href="TailList.jsp?pg=<%=endPage+1%>">▶</a>]
		[<a href="TailList.jsp?pg=<%=allPage%>">▶▶</a>]
	<%
		}
	%>
	</td>
	</tr>
<tr align="center">
</tr>
</table>
</body>
</html>