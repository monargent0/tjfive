<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo List</title>
</head>
<body>
	<h1>Todo-List</h1>
	<form action="list.do" method="get">
	<table>
		<tr>
			<td colspan="5"><input type="button" name="listSelect" value="ALL">&nbsp;</td>
			<td><input type="button" name="listSelect" value="COMPLETE">&nbsp;</td>
			<td><input type="button" name="listSelect" value="INCOMPLETE">&nbsp;</td>
		</tr>
	</table>
	</form>
	<table>
		<tr>
			<td>
			<select name="category">
				<option value="검색항목1">검색항목1</option>
				<option value="검색항목2">검색항목2</option>
				<option value="검색항목3">검색항목3</option>
			</select>
			</td>
			<td>
			<input type="text" name="search">
			</td>
			<td>
			<input type="submit" value="검색">
			</td>
		</tr>
	</table>
	<form method="get">
		<table border="1">
			<tr>
				<th>TODO</th>
				<th>D-Day</th>
				<th>STATUS</th>
				<th>ACTION</th>
			</tr>
			<c:forEach items="${list }" var="dto">
			<tr>
				<td align="center">
				<input type="text" value="${dto.todoContent }" name="todoContent" formaction="modify.do?listCode=${dto.listCode }">
				</td>
				<td align="center">
				<input type="text" value="${dto.dDay }" name="dDay" formaction="modify.do?listCode=${dto.listCode }">
				</td>
				<td align="center">
				<input type="text" value="${dto.todoStatus }" name="todoStatus" formaction="modify.do?listCode=${dto.listCode }">
				</td>
				<td align="center">
				<a href="modify.do?listCode=${dto.listCode}">수정</a> <a href="delete.do?listCode=${dto.listCode}">삭제</a>
				</td>
			</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Add" formaction="write_view.jsp">
	</form>
</body>
</html>