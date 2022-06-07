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
				<span class="title02">코드 공부중</span>
			</td>
		</tr>
		<tr>
			<td>
				<table width="110%" border="0" cellpadding="10" cellspacing="0">
					<tr height="550">
						<td bgcolor="#d5d5d5" align="center">
						
							<% 
								int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
								int checkPw = Integer.parseInt(request.getAttribute("checkPw").toString());
								
								if(checkId == 0){
							%>
									<script type="text/javascript">
										alert("입력하신 아이디는 존재하지않는 아이디입니다. 아이디를 확인해주세요.");
										history.go(-1);
										document.reg_frm.mid.focus();
									</script>
							<%
								} else if(checkPw == 0) {
							%>
									<script type="text/javascript">
										alert("입력하신 비밀번호가 틀립니다. 비밀번호를 확인해주세요.");
										history.go(-1);
										document.reg_frm.mid.focus();
									</script>
							<% 		
								} else {
									session.setAttribute("validMem", "yes");
								}
							%>
							<span class="content01">
								안녕하세요.<br>
								${mname }님 로그인을 환영합니다.<br>
								로그인하신 아이디는 ${mid }입니다.<br>
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