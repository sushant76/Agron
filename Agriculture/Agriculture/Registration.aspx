<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css/bootstrap.css" /> 
    <link rel="stylesheet" href="Css/Sheet.css" /> 
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" "/>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
      
    </style>
</head>

    <body id="LoginForm" style="background-image:url(../Images/registration-form-background-images-6.jpg);background-size:cover;background-repeat:no-repeat">
        <form id="Login" runat="server">
<div class="container-fluid">
    <div class="row">
        <div class="col-sm"></div>
        
        <div class="col-sm">
            <div class="container">
<h1 class="form-heading">Registration Form</h1>
<div class="login-form">
<class="main-div">
    <div class="panel">
   <h2>Welcome!</h2>
   <p>Please enter your details</p>
   </div>
    

        <div class="form-group">
           
            <asp:RadioButtonList runat="server" ID="gender" RepeatDirection="Horizontal" Font-Bold="true" Font-Size="Large" ForeColor="WhiteSmoke"  AutoPostBack="true" CssClass="labels">
        <asp:ListItem Text="Buyer" Value="Buyer"></asp:ListItem>
        <asp:ListItem Text="Seller" Value="Seller"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator runat="server" ID="genderRequired" Display="Dynamic" Font-Size="Medium" ControlToValidate="gender" ErrorMessage="Gender is required" ForeColor="red"  ></asp:RequiredFieldValidator>
                </div>
              
                <div class="form-group">
                                         
                             <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Username" runat="server" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Font-Size="Medium" runat="server" ForeColor="Red" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>  
               </div>
              
              <div class="form-group">                    

                      
                       <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Email" Textmode="Email"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Visible="false" Font-Size="Medium" ForeColor="red"></asp:Label>   
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" Font-Size="Medium" runat="server" ForeColor="Red" ErrorMessage="Enter your Email"></asp:RequiredFieldValidator>
                </div>
       
                   <div class="form-group">
                    
                  
            <asp:DropDownList  ID="DropDownList1" class="btn btn-primary dropdown-toggle" runat="server" AutoPostBack="true" AppendDataBoundItems="true"  OnSelectedIndexChanged="Dropdown" >  
            <asp:ListItem Value="-1">--Select State--</asp:ListItem> 
               
        </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="DropDownList1" Font-Size="Medium"  InitialValue="-1" runat="server" ErrorMessage="Select a state" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            
                    <div class="form-group">
               
                 
            <asp:DropDownList ID="DropDownList2" class="btn btn-primary dropdown-toggle" runat="server" AutoPostBack="true" AppendDataBoundItems="true"  >  
          <asp:ListItem Value="-1">--Select City--</asp:ListItem> 
        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="DropDownList2" Font-Size="Medium"  InitialValue="-1" runat="server" ErrorMessage="Select a state" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
 


               <div class="form-group" >
              
                       

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password" ></asp:TextBox>
                         <asp:Label ID="Label2" runat="server" Visible="false" Font-Size="Medium" ForeColor="red"></asp:Label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" Font-Size="Medium" runat="server" ForeColor="Red" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                <%-- <asp:regularexpressionvalidator display="Dynamic" id="RegularExpressionValidator1"  runat="server" errormessage="Password must be 8-10 characters long with at least one numeric,</br>one upper case character and one special character." forecolor="Red" validationexpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+}{:;'?/>.<,])(?!.*\s).*$" controltovalidate="TextBox3"> </asp:regularexpressionvalidator>--%>
                      </div></div>


              <div class="form-group">
                    

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Phone number" runat="server" TextMode="Phone" ></asp:TextBox>
                      <asp:Label ID="Label3" runat="server" Visible="false" Font-Size="Medium" ForeColor="red"></asp:Label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" Font-Size="Medium" runat="server" ForeColor="Red" ErrorMessage="Enter Phone no."></asp:RequiredFieldValidator>  
                </div></div>

    
            <div class="form-group">
                 <div class="col-md-offset-9 col-md-2">
                     <asp:Button ID="Button1" CssClass="btn btn-default btn-lg" runat="server" Text="Register" onClick="btn_RegUser" />
                </div>
            </div>  
</div>
        <asp:Label ID="Label5" runat="server" visible="false"></asp:Label>
</div></div>
<div class="col-sm"></div>
 </div>    </div>       
    
        

       
         </form>

</body>
</html>
