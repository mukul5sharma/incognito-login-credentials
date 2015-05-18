	<%  
response.setHeader("Pragma","no-cache");  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Expires","0");  
response.setDateHeader("Expires",-1);  
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Authentication Required</title>
<link rel="stylesheet" type="text/css" href="main_css.css" />
</head>
<body>
<%
		if
		(session.getAttribute("fullname")!=null)
		{
		}
		else
		{
		response.sendRedirect("index.jsp");
		}
		%>
<table align="center" valign="middle" width="1024px">
	<tr>
		<td align="center" valign="top" style="width: 507px">
			<form name="login" action="CheckSecurityQue" onSubmit="return validate();" method="post">
				<table valign="middle" width="370px" style="background-color:#F5FFFA;border: medium firebrick solid; padding: 20px; border-radius:20px">
					<tr>
						<td style="font-family:calibri;color:red;font-weight:bold;" align="center">
							<blink>USER AUTHENTICATION REQUIRED</blink>
						</td>
					</tr>
					<tr>
						<td align="center">
							<table>
								<tr>
									<td align="right"><span style="font-family:calibri;color:firebrick;">Q.</span></td>
									<td><span style="font-family:calibri;color:#4E9258;"><%=session.getAttribute("securityque") %></span></td>
								</tr>
								<tr>
									<td align="right"><span style="font-family:calibri;color:firebrick;">Answer</span></td>
									<td><input type="password" name="ans" style="color:#4E9258;border:2px #659EC7 solid;"><br/></td>
								</tr>
								<tr>
									<td colspan="2" align="right">
										<input type="reset" value="Clear" style="cursor:pointer;background-color:firebrick;color:white;font-family:Calibri;font-size:medium;border-style:none;border-radius:10px; width:70px; height:25px;">
										<input type="submit" value="Submit" style="cursor:pointer;background-color:firebrick;color:white;font-family:Calibri;font-size:medium;border-style:none;border-radius:10px; width:70px; height:25px;">
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</form>
		</td>
	</tr>
</table>
</body>
</html>