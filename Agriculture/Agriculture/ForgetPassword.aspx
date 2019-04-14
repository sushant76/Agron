<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     <link rel="stylesheet" href="Css/bootstrap.css" />    
     <link rel="stylesheet" href="Css/Sheet.css" /> 
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" ">
   
   
 </head>
<body style="background-image:url(../Images/password3.jpg);background-size:cover;background-position:inherit;">

    <form id="form1" runat="server">
     <div class="container-fluid" style="height:500px">
            <div class="row">
                <div class="col-sm"></div>
                         <div class="col-sm">
                             <div class="container" style="height:250px; Width:550px">
                            <h1 class="form-heading" style="color:yellow">Forgot Password</h1>
                              <div class="login-form">
                               <class="main-div">
                                
                                <h1 style="color:yellow;font-weight:bold">No worries!
                                    We have got you covered
                                </h1>
                                    <h1 style="color:whitesmoke;font-weight:bold"></h1>
                              <br />
                                   <br />
                              
                                   <div class="form-group">
                                        <div class="col-sm"></div>
                                       <div class="col-sm"></div>
                                       <div class="col-sm" style="padding-left:80px">
                                            <asp:TextBox ID="txtEmail" class="font-weight-bold" Font-Size="Medium"  placeholder="Enter your registered email address" runat="server" width="350px" ></asp:TextBox>
                                            <br />
                                           <div class="form-group">
                                               <asp:Label ID="lblMessage" class="font-weight-bold" Font-Size="Medium"  runat="server" Font-Bold="true" Width="550px" />
                             
                                           </div>
                             
                                       </div>
                                       <div class="col-sm"></div>
                            </div>
                                   <div class="form-group">
                                        <div class="col-md-offset-9 col-md-2">
                                       <asp:Button ID="sendButton" Text="Send"  CssClass="btn btn-default btn-lg" runat="server" OnClick="SendEmail" />
                                            </div>
                                   </div>
                                   <br /><br />
                                    <div id="div1" class="form-group" runat="server" visible="false">
                                        <div class="col-md-offset-8 col-md-2">
                                       <asp:Button Text="Back to login"  CssClass="btn btn-default btn-lg" runat="server" OnClick="BackToLogin" />
                                            </div>
                                   </div>
                             
                         </div></div></div>
                         <div class="col-sm"></div>

                </div></div>
    </form>
  </body></html>