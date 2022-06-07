<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
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
				<span class="title02">코드 공부중</span>
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" border="0" cellpadding="10" cellspacing="0">
					<tr>
						<td bgcolor="#d5d5d5"><span class="title03">J</span><span class="title04">AVA</span></td>
						<td rowspan="6" bgcolor="#353535" align="center">
							<img alt="" src="${pageContext.request.contextPath }/resources/img/sand.jpg">
						</td>
					</tr>
					<tr>
						<td bgcolor="#d5d5d5"><span class="title03">J</span><span class="title04">AVA SCRIPT</span></td>
					</tr>
					<tr>
						<td bgcolor="#d5d5d5"><span class="title03">J</span><span class="title04">SP</span></td>
					</tr>
					<tr>
						<td bgcolor="#d5d5d5"><span class="title03">S</span><span class="title04">PRING</span></td>
					</tr>
					<tr>
						<td bgcolor="#d5d5d5"><span class="title03">H</span><span class="title04">TML5</span></td>
					</tr>
					<tr>
						<td bgcolor="#d5d5d5"><span class="title03">D</span><span class="title04">ATABASE</span></td>
					</tr>
					
				</table>
			</td>
		</tr>
		
	</table>
	</center>
		<%@ include file="include/footer.jsp" %>
</body>
</html>