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
<title>Register</title>
<%
if(session.getAttribute("fullname")!=null)
{
response.sendRedirect("home.jsp");
}
%>
<link rel="stylesheet" type="text/css" href="main_css.css" />
<script type="text/javascript">
	function validateForm()
{
var x=document.forms["signup"]["emailid"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
  
x=document.forms["signup"]["firstname"].value;
if (x==null || x=="")
  {
  alert("First name must be filled out");
  return false;
  }
  
x=document.forms["signup"]["lastname"].value;
if (x==null || x=="")
  {
  alert("Last name must be filled out");
  return false;
  }
  
x=document.forms["signup"]["username"].value;
if (x==null || x=="")
  {
  alert("Username name must be filled out");
  return false;
  }
  
x=document.forms["signup"]["password"].value;
if (x==null || x=="")
  {
  alert("Password must be filled out");
  return false;
  }
  
x=document.forms["signup"]["confirmpassword"].value;
if (x==null || x=="")
  {
  alert("Please Re-enter Password");
  return false;
  }
  x=document.forms["signup"]["day"].value;
if (x==null || x=="")
  {
  alert("Your Birth Day must be filled out");
  return false;
  }
  x=document.forms["signup"]["year"].value;
if (x==null || x=="")
  {
  alert("Your Birth Year Must be filled out");
  return false;
  }
  x=document.forms["signup"]["mobileno"].value;
if (x==null || x=="")
  {
  alert("Mobile number must be filled out");
  return false;
  }
else if(x.length()>10)
	{
	alert("Mobile number must be of 10 Digits");
	return false;
	}
  x=document.forms["signup"]["emailid"].value;
if (x==null || x=="")
  {
  alert("Email Id must be filled out");
  return false;
  }
x=document.forms["signup"]["ques"].value;
if (x==null || x=="")
  {
  alert("Security Question must be filled");
  return false;
  }
x=document.forms["signup"]["ans"].value;
if (x==null || x=="")
  {
  alert("Security Answer must be filled");
  return false;
  }
}
	</script>
</head>
<body>
<table align="center" valign="middle" width="1024px">
	<tr>
		<td align="center" valign="top" style="width: 507px">
			<form name="signup" action="SaveUser" onSubmit="return validateForm();" method="post">
				<table valign="middle" width="350px" style="background-color:#F5FFFA;border: medium firebrick solid; padding: 20px; border-radius:20px">
					<tr>
						<td style="font-family:calibri;color:#556B2F;font-weight:bold" align="center">
							Register !!!!!
						</td>
					</tr>
					<tr>
						<td align="center">
							<table>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Name<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<input name="firstname" type="text" style="border:2px #659EC7 solid; width:150px; height:23px; color:#659EC7;" value="First" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
								<td>
									<input type="text" name="lastname" style="border:2px #659EC7 solid; width:150px; height:23px; color:#659EC7;" value="Last" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Select your username<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div style="color:#4E9258; font-weight:bold;">
										connectwidus.com/
										<input type="text" name="username" style="border:2px #659EC7 solid; width:196px; height:23px; color:#659EC7;" value="Username" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Create a password<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" name="password" style="border:2px #659EC7 solid; width:308px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Confirm your password<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" name="confirmpassword" style="border:2px #659EC7 solid; width:308px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Birthday<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<select name="month" style="border:2px #659EC7 solid; width:157px; height:28px; color:#659EC7;">
										<option disabled="disabled" selected="selected"></option>
										<option>January</option>
										<option>February</option>
										<option>March</option>
										<option>April</option>
										<option>May</option>
										<option>June</option>
										<option>July</option>
										<option>August</option>
										<option>September</option>
										<option>October</option>
										<option>November</option>
										<option>December</option>
									</select>
									<input type="text" name="day" value="Day" style="border:2px #659EC7 solid; width:50px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>&nbsp;,
									<input type="text" name="year" value="Year" style="border:2px #659EC7 solid; width:80px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Gender<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<select name="sex" style="border:2px #659EC7 solid; width:310px; height:28px; color:#659EC7;">
										<option disabled="disabled" selected="selected"></option>
										<option>Male</option>
										<option>Female</option>
										<option>Other.</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Mobile Phone.<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div style="color:#4E9258; font-weight:bold;">
										+91&nbsp;&nbsp;<input name="mobileno" type="text" value="Phone" style="border:2px #659EC7 solid; width:275px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										E-Mail<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input name="emailid" type="text" value="email" style="border:2px #659EC7 solid; width:308px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Enter your Security Question<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input name="ques" type="text" value="Question" style="border:2px #659EC7 solid; width:308px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										Answer<font color="red"><b>*</b></font>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="text" name="ans" value="Answer" style="border:2px #659EC7 solid; width:308px; height:23px; color:#659EC7;" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="form_labels">
										<input type="submit"" value="I Accept &gt;" style="cursor:pointer;background-color:firebrick;color:white;font-family:Calibri;font-size:medium;border-style:none;border-radius:10px; width:80px; height:25px;"/>
										 <span style="font-family:calibri;color:#659EC7;">all Terms and Conditions</span><br/>
									</div>
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