<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    

<html>
<head>
<meta charset=UTF-8">
<title>게시판 출력창</title>
<style type="text/css">
	#disable{visibility: hidden}
</style>
</head>
<body>
<table border="1"  align="center"  width="80%">
    <tr align="center"   bgcolor="lightgreen">
      <th ><b>글번호</b></th>
      <th><b>글제목</b></th>
      <th><b>작성자</b></th>
      <th><b>작성일</b></th>
     
   </tr>
   
 <c:forEach var="board" items="${boardList}" >     
   <tr align="center">
      <td>${board.bno}</td>
      <td>${board.title}</td>
      <td>${board.mb_name}</td>
      <td>${board.regdate}</td>
    
      </tr>
       </c:forEach> 
      </table>
      <div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/boardList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/boardList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/boardList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
</body>
</html>