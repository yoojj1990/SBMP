<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<title>## YJJ Profile Web</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align="center">
				<span class="title01">YJJ PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="title02">질문 하는곳</span>
			</td>
		</tr>
		<tr>
			<td>
				<table width="110%" border="0" cellpadding="10" cellspacing="0">
					<tr height="550">
						<td bgcolor="#d5d5d5" align="center" height="500">
							<table border="0" cellpadding="10" cellspacing="0">
								<form action="write" method="post" name="question_frm">
									<tr>
										<td>
											<span class="text01">ID : </span>
										</td>
										<td>
											<input class="type01" type="text" name="qid" value="<% if(session.getAttribute("id") != null) { out.print(session.getAttribute("id")); } else { out.print("GUEST");} %>" readonly>
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">NAME : </span>
										</td>
										<td>
											<input class="type01" type="text" name="qname" value="<% if(session.getAttribute("name") != null) { out.print(session.getAttribute("name")); } else { out.print("");} %>">
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">QUESTION : </span>
										</td>
										<td>
											<textarea id="textarea01" rows="5" cols="30" name="qcontent"></textarea>
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">E-MAIL : </span>
										</td>
										<td>
											<input class="type01" type="text" name="qemail">
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<input class="button01" type="button" value="글쓰기" onclick="boardConfirm()">&nbsp;&nbsp;
											<input class="button01" type="button" value="글목록" onclick="location.href='list'">
										</td>
									</tr>
								</form>
							</table>
						<td>
					</tr>
				</table>
			</td>
		</tr>
		
	</table>
	</center>
		<%@ include file="include/footer.jsp" %>
</body>
</html>