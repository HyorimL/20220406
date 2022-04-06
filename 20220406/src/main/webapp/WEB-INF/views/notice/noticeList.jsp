<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
    width: 60%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
    padding: 10px;
  }

th, td {
	text-align: center;
}

</style>
</head>
<body>
<div align="center">
	<div><h3>N O T I C E</h3></div>
	<br>
	<a href="noticeInputForm.do">notice registration</a><br>
	<div>
		<table>
			<thead>
				<tr>
					<th width="20">no</th>
					<th width="300">title</th>
					<th width="100">date</th>
					<th width="10">hit</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${notice }" var="n">
					<tr>
						<td>${n.id }</td>
						<td>${n.title }</td>
						<td>${n.wdate }</td>
						<td>${n.hit }</td>
				</c:forEach>
			</tbody>
		</table>
	</div><br>
	<div>
	<button type="button" onclick="location.href='home.do'">HOME</button>
	</div>
</div>

</body>
</html>