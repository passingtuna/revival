<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="board.DAO"/>
<jsp:useBean id="vo1" class="board.VO"/>

<%	
request.setCharacterEncoding("UTF-8");
	String FS =   request.getParameter("FS");
		if(FS !=null){
		 vo1.setFS(FS);
			}
		if(FS == null){
		FS = vo1.getFS();
		}
		
		int IFS = Integer.parseInt(FS);
    String FindT = request.getParameter("FindT");
		 if(FindT !=null){
			 vo1.setFindT(FindT);
		 }
		if(FindT == null){
		FindT = vo1.getFindT();
	}

	ArrayList<VO> alist = dao.findMemberList(FindT,IFS);
	int total = dao.Fcount(FindT,IFS);
	int size = alist.size();
	int size2 = size;
	
	final int ROWSIZE = 5;
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
 <script type="text/javascript">

function FindCheck()
{
 var form = document.Find; 
 if( !form.FindT.value )
 {
  alert( "검색어을 적어주세요" );
  form.FindT.focus();
  return;
 }
form.submit();
}

function change_go(form){
	form.FS.value = form.selectBox.options[form.selectBox.selectedIndex].value;
}

</script>
 <title>게시판</title>
 </head>
 <body>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr>
   <td width="73">번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="58">조회수</td>
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
			int idx = vo.getNum();
%>
<tr height="25" align="center">
<td align="center"><%=idx%></td>
<td align="left"><a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=vo.getTitle() %></a></td>
<td align="center"><%=vo.getName()%></td>
<td align="center"><%=vo.getTime() %></td>
<td align="center"><%=vo.getHit() %></td>
<td align="center">&nbsp;</td>
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
		[<a href="Find.jsp?pg=1">◀◀</a>]
		[<a href="Find.jsp?pg=<%=startPage-1%>">◀</a>]
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
				[<a href="Find.jsp?pg=<%=i %>"><%=i %></a>]
	<%
			}
		}
	%>
	
	<%
		if(endPage<allPage){
	%>
		[<a href="Find.jsp?pg=<%=endPage+1%>">▶</a>]
		[<a href="Find.jsp?pg=<%=allPage%>">▶▶</a>]
	<%
		}
	%>
	</td>
	</tr>
<tr align="center">
<td>
<form name =Find  method = post action = "Find.jsp">
 <select name = "selectBox" size = "1" onchange="change_go(this.form)">
    <option value = "1" selected> 내용 </option>
    <option value = "2"> 작성자 </option>
    <option value = "3"> 제목 </option>
    <option value = "4"> 제목+내용 </option>
   </select>
<input type=text name = FindT id = FindT size="50" maxlength="50">
<input type=text name = FS id = FS size="0" value = "1" style="display:none">
   <input type=button  value="검색" OnClick="javascript:FindCheck();">
</form>
  </td>
<td><input type=button value="글쓰기" OnClick="window.location='../write.jsp'"></td>
</tr>
<td><input type=button value="전체보기" OnClick="window.location='list.jsp'"></td>
</table>
</body>
</html>