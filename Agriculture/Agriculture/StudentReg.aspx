<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentReg.aspx.cs" Inherits="StudentReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Css/loginexample.css" rel="stylesheet" />
     <link rel="stylesheet" href="css/bootstrap.min.css" />    
   <style>
      body{
          background: url(../Images/background.png);
    background-size: cover;

      }


   </style> 
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
       


    <h4 class="page-sub-header"><i>Registration</i></h4>
        <hr />
    <div class="form-horizontal">
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label1" CssClass="control-label col-md-2" runat="server" Text="Student Usn"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label2" CssClass="control-label col-md-2" runat="server" Text="First Name"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div></div>
              <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label3" CssClass="control-label col-md-2" runat="server" Text="Last Name"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label4" CssClass="control-label col-md-2" runat="server" Text="Department"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div></div>
                    <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label5" CssClass="control-label col-md-2" runat="server" Text="Semester"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label6" CssClass="control-label col-md-2" runat="server" Text="Email"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Email" ></asp:TextBox>
                        </div>
                </div></div>
  <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label7" CssClass="control-label col-md-2" runat="server" Text="Password"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label8" CssClass="control-label col-md-2" runat="server" Text="Confirm Password"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" textmode="Password"></asp:TextBox>
                        </div>
                </div>
      </div>
  <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label9" CssClass="control-label col-md-2" runat="server" Text="College Name"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label10" CssClass="control-label col-md-2" runat="server" Text="College Address"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>

 </div>
      <div style="display:flex">
            <div class="form-group">
                <div class="col-md-offset-10 col-md-10">
                     <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Register" OnClick="Button1_Click" />
                </div>
            </div>    </div>
      
</div>
    </form>
       

</body>
    </html>

 