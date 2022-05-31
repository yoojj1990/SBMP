<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css">

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
				<span class="title02">프로필 사이트 만들기</span>
			</td>
		</tr>
		<tr>
			<td>
				<table width="110%" border="0" cellpadding="10" cellspacing="0">
					<tr height="550">
						<td bgcolor="#d5d5d5" align="center" height="500">
							<table border="0" cellpadding="10" cellspacing="0">
								<form action="loginOk" method="post">
									<tr>
										<td>
											<span class="text01">MEMBER ID : </span>
										</td>
										<td>
											<input class="type01" type="text" name="id">
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">PASSWORD : </span>
										</td>
										<td>
											<input class="type01" type="password" name="pw">
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<input class="button01" type="submit" value="로그인">&nbsp;&nbsp;
											<input class="button01" type="button" value="회원가입" onclick="location.href='join'">
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