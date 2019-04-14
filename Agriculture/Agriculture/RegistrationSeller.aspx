<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationSeller.aspx.cs" Inherits="RegistrationSeller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <h4 class="page-sub-header"><i>Registration</i></h4>
        <hr />
    <div class="form-horizontal">
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label1" CssClass="control-label col-md-2" runat="server" Text="UserName"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ForeColor="Red" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>  </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label2" CssClass="control-label col-md-2" runat="server" Text="Email"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Textmode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ForeColor="Red" ErrorMessage="Enter your Email"></asp:RequiredFieldValidator> </div>
                </div></div>
       
                    <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                     <p>Select Your State</p>  
                 <div>  
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" AppendDataBoundItems="true"  OnSelectedIndexChanged="Dropdown" >  
            <asp:ListItem Value="-1">--Select State--</asp:ListItem> 
               
        </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="DropDownList1"  InitialValue="-1" runat="server" ErrorMessage="Select a state" ForeColor="red"></asp:RequiredFieldValidator>
                </div></div>
              <div class="form-group col-md-6"  style="display:flex">
                       <p>Select Your City</p>  
                 <div>  
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" AppendDataBoundItems="true"  >  
          <asp:ListItem Value="-1">--Select City--</asp:ListItem> 
        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="DropDownList2"  InitialValue="-1" runat="server" ErrorMessage="Select a state" ForeColor="red"></asp:RequiredFieldValidator>
                </div></div>
 

</div>
               <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label3" CssClass="control-label col-md-2" runat="server" Text="Password"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ForeColor="Red" ErrorMessage="Enter password"></asp:RequiredFieldValidator></div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label4" CssClass="control-label col-md-2" runat="server" Text="Phone"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="Phone" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ForeColor="Red" ErrorMessage="Enter Phone no."></asp:RequiredFieldValidator>  </div>
                </div></div>
      <div style="display:flex">
            <div class="form-group">
                <div class="col-md-offset-10 col-md-10">
                     <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Register" onClick="btn_RegUser" />
                </div>
            </div>    </div>
      
</div>
    </form>
</body>
</html>
