<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>공지사항 등록</h1></div>
	<div>
		<form id="frm" action="noticeInsert.do" method="post" enctype="multipart/form-data">
			<div>
				<table border="1">
					<tr>
						<th width="70">제목</th>
						<td width="300">
							<input type="text" id="title" name="title" size="75">
						</td>
					</tr>
					<tr>
						<th width="70">내용</th>
						<td width="300">
							<textarea rows="10" cols="70" id="content" name="content"></textarea>
						</td>
					</tr>
					<tr>
						<th width="70">작성일</th>
						<td width="300">
							<input type="date" id="wdate" name="wdate">
						</td>
					</tr>
					<tr>
						<th width="70">첨부파일</th>
						<td width="300">
							<input type="file" id="file" name="file">
						</td>
					</tr>
				</table>
			</div><br>
			<div>
				<input type="submit" value="등록하기">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<input type="button" value="목록보기" onclick="location.href='noticeList.do'">
			</div>
		</form>
	</div>
</div>
</body>
</html>