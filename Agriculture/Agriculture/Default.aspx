<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css/bootstrap.css" />    
     <link rel="stylesheet" href="Css/Sheet.css" /> 
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" "/>
    <style >
          body{
              background-image:url(../Images/login.jpg);
              background-size:cover;
              background-position:center;
              background-repeat:no-repeat;
          }   
         
   </style>
</head>
<body >
    <form id="form1" runat="server">
       
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm"></div>
                <div class="col-sm">
                          <div class="container">
<h1 class="form-heading">Login</h1>
<div class="login-form">
<class="main-div">
    <div class="panel">
   <h2>Welcome!</h2>
   <p>Please enter your details</p>
   </div>
    
                     
            <div class="form-group">
            <asp:Label ID="Label1" runat="server" class="font-weight-bold" Font-Size="Medium" Text="Select your type" ForeColor="WhiteSmoke"></asp:Label>
        
            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" Font-Size="Medium" ID="gender"  AutoPostBack="true"  class="font-weight-bold" ForeColor="WhiteSmoke">
               <asp:ListItem Text="Buyer" Value="Buyer" ></asp:ListItem>
               <asp:ListItem Text="Seller" Value="Seller"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" ID="genderRequired" Font-Size="Medium" Display="Dynamic" ControlToValidate="gender" ErrorMessage="Gender is required" ForeColor="red"  ></asp:RequiredFieldValidator>
         </div>
            
            
           
                   
                     <div class="form-group">
                <asp:TextBox ID="TextBox1" Font-Size="Medium" class="font-weight-bold" placeholder="Email Address" runat="server" TextMode="Email" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Font-Size="Medium" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Your email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="Label4" Font-Size="Medium" CssClass="lbl3 lblstyle" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
               </div>
                     <div class="form-group">
                         <asp:HyperLink ID="HyperLink2" Font-Size="Medium" runat="server" class="font-weight-bold" Visible="false" ForeColor="Red" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
         <%--<asp:HyperLink ID="HyperLink3" runat="server" Visible="false" class="font-weight-bold" ForeColor="Red" NavigateUrl="~/Registration.aspx">Regsiter as a buyer</asp:HyperLink> --%>   
                         <br /></div>
                  
                   
                          <div class="form-group">
                <asp:TextBox ID="TextBox2" Font-Size="Medium" class="font-weight-bold" Placeholder="Password" textmode="Password" runat="server" ></asp:TextBox>
               <asp:RequiredFieldValidator Font-Size="Medium" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
                    <br />

             
                 <div class="form-group">
            <asp:Button ID="Button1" class="btn btn-info btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                     </div>
                 <div class="form-group">
               <asp:HyperLink ID="HyperLink1" Font-Size="Medium" runat="server" class="font-weight-bold" NavigateUrl="ForgetPassword.aspx" ForeColor="Red">Forget Password ?</asp:HyperLink>
                   <asp:HyperLink ID="HyperLink3" Font-Size="Medium" runat="server" class="font-weight-bold" NavigateUrl="Registration.aspx" ForeColor="Red">Register?</asp:HyperLink>
       
      </div>
           </div> 
                </div></div>
                
                <div class="col-sm"></div>
                <div class="col-sm"></div>
        </div></div>
      
    </form>
</body>
</html>
