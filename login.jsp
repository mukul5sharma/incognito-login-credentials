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
<title>Login</title>
<link rel="stylesheet" type="text/css" href="main_css.css" />
<script>
function validate()
{
	var x=document.forms["login"]["email"].value;
	var y=document.forms["login"]["pwd"].value;
	if (x==null || x=="" || y==null || y=="")
	{
		if((x==null || x=="") && (y==null || y==""))
			alert("Enter Your Login Credentials");		
		else if(x==null || x=="")
			alert("Enter Your E-mail");
		else if(y==null || y=="")
			alert("Enter Your Password");
		return false;
	}
	else
	{
		var atpos=x.indexOf("@");
		var dotpos=x.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
		{
			alert("Not a valid e-mail address");
			return false;
		}
		
	}	
}
</script>
</head>
<body>
<%
if(session.getAttribute("fullname")!=null)
{
response.sendRedirect("home.jsp");
}
%>
<table align="center" valign="middle" width="1024px">
	<tr>
		<td align="center" valign="top" style="width: 507px">
			<form name="login" action="CheckUser" onSubmit="return validate();" method="post">
				<table valign="middle" width="370px" style="background-color:#F5FFFA;border: medium firebrick solid; padding: 20px; border-radius:20px">
					<tr>
						<td style="font-family:calibri;color:#556B2F;font-weight:bold" align="center">
							Login !!!!!
						</td>
					</tr>
					<tr>
						<td align="center">
							<table>
								<tr>
								<td colspan="2" >
								<jsp:scriptlet>if(request.getAttribute("wronguser")!=null){if(request.getAttribute("wronguser").equals(true)){out.print("The Email Id or Password is incorrect");}} </jsp:scriptlet>
								</td>
								</tr>
								<tr>
									<td align="right"><span style="font-family:calibri;color:firebrick;">Username</span></td>
									<td><input type="text" name="email" style="border:2px #659EC7 solid;"><br/></td>
								</tr>
								<tr>
									<td align="right"><span style="font-family:calibri;color:firebrick;">Password</span></td>
									<td><input type="password" name="pwd" style="border:2px #659EC7 solid;"><br/></td>
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