<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">

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
				<span class="title02">가입 완료</span>
			</td>
		</tr>
		<tr>
			<td>
				<table width="110%" border="0" cellpadding="10" cellspacing="0">
					<tr height="550">
						<td bgcolor="#d5d5d5" align="center">
							
							<% 
								int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
								if(checkId == 1){
							%>
									<script type="text/javascript">
										alert("입력하신 아이디는 사용중입니다. 다른 아이디를 사용해주세요.");
										history.go(-1);
										reg_frm.mid.focus();
									</script>
							<%
								}
							%>
							
							
							
							<span class="content01">
								안녕하세요.<br>
								${mname }님 가입을 환영합니다.<br>
								가입하신 아이디는 ${mid }입니다.<br>
							</span>
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