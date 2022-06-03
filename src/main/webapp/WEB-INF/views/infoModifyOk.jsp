<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>

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
								<form action="" method="post" name="reg_frm">
									<tr>
										<td colspan="2">
											<span class="text02">${memberDto.mid } 님의 회원정보를 수정하였습니다.</span>
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">MEMBER ID : </span>
										</td>
										<td>
											<span class="text02">${memberDto.mid }</span>
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">PASSWORD : </span>
										</td>
										<td>
											<span class="text02">${memberDto.mpw }</span>
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">NAME : </span>
										</td>
										<td>
											<span class="text02">${memberDto.mname }</span>
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">E-MAIL : </span>
										</td>
										<td>
											<span class="text02">${memberDto.memail }</span>
										</td>
									</tr>
									<tr>
										<td>
											<span class="text01">JOIN DATE : </span>
										</td>
										<td>
											<span class="text02">${memberDto.mdate }</span>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<input class="button01" type="button" value="정보수정" onclick="location.href='infoModify'">&nbsp;&nbsp;
											<input class="button01" type="button" value="홈바로가기" onclick="location.href='index'">
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