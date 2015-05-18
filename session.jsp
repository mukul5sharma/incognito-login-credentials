	<%  
response.setHeader("Pragma","no-cache");  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Expires","0");  
response.setDateHeader("Expires",-1);  
%>
<%@page import="beans.SessionDetail" %>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Session Details</title>
<link rel="stylesheet" type="text/css" href="main_css.css" />
</head>
<body>
<table align="center" valign="middle" width="1024px">
	<tr>
		<td align="center" valign="top" style="width: 507px">
			<form name="login" action="CheckUserActivity" onSubmit="return validate();" method="post">
				<table valign="middle" width="700px" style="background-color:#F5FFFA;border: medium firebrick solid; padding: 20px; border-radius:20px">
					<tr>
						<td align="center">
							<table>
								<tr>
									<td colspan="2" align="right">
										<input type="submit" name="button" value="Home" style="cursor:pointer;background-color:firebrick;color:white;font-family:Calibri;font-size:medium;border-style:none;border-radius:10px; width:70px; height:25px;">
										<input type="submit" name="button" value="View Logs" style="cursor:pointer;background-color:firebrick;color:white;font-family:Calibri;font-size:medium;border-style:none;border-radius:10px; width:90px; height:25px;">
										<input type="submit" name="button" value="LogOut" style="cursor:pointer;background-color:firebrick;color:white;font-family:Calibri;font-size:medium;border-style:none;border-radius:10px; width:70px; height:25px;">
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td style="font-family:calibri;color:#556B2F;font-weight:bold" align="center">
							Here is What You want
						</td>
					</tr>
					<tr>
						<td align="center">
							<table border="1" style="border:thin  dotted;font-size:small;">
							<tr align="center" style="background-color:firebrick;color:white;font-family:Calibri;">
									<th style="width:100;height:30px;">Date</th>
									<th style="width:100;height:30px;">Time</th>
									<th style="width:100;height:30px;">IP Address</th>
									<th style="width:100;height:30px;">Operating System</th>
									<th style="width:100;height:30px;">Browser</th>
								</tr>
							<%int n=Integer.parseInt(session.getAttribute("i").toString());
		 					int i=0;
		 					SessionDetail sessiondetail[]=(SessionDetail[])session.getAttribute("session");
		 					for(i=0;i<n;i++)
		 					{
		 					%>
								<tr style="border:thin dotted;" align="center" style="color:#4E9258;font-family:Calibri;">
									<td style="width:100;"><%=sessiondetail[i].getDate() %></td>
									<td style="width:100;"><%=sessiondetail[i].getTime() %></td>
									<td style="width:100;"><%=sessiondetail[i].getIp() %></td>
									<td style="width:100;"><%=sessiondetail[i].getOs() %></td>
									<td style="width:100;"><%=sessiondetail[i].getBrowser() %></td>
								</tr>
								<%} %>
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