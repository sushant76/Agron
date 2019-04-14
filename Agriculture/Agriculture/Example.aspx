<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example.aspx.cs" Inherits="Example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function Confirm()
{
   if (Page_ClientValidate())
   {
      var confirm_value = document.createElement("INPUT");
      confirm_value.type = "hidden";
      confirm_value.name = "confirm_value";
      if (confirm("Data has been Added. Do you wish to Continue ?"))
      {
         confirm_value.value = "Yes";
      }
      else
      {
         confirm_value.value = "No";
      }
      document.forms[0].appendChild(confirm_value);
   }
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:flex">
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="Check1" AutoPostBack="true" Text="Wheat" />
        <asp:TextBox ID="TextBox1" runat="server" style="display:none"></asp:TextBox>
            <asp:textbox runat="server" id="txtPasswordWithSpecialCharacter">
                   </asp:textbox>
             <asp:regularexpressionvalidator display="Dynamic" id="RegularExpressionValidator1"  runat="server" errormessage="Password must be 8-10 characters long with at least one numeric,</br>one upper case character and one special character." forecolor="Red" validationexpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+}{:;'?/>.<,])(?!.*\s).*$" controltovalidate="txtPasswordWithSpecialCharacter"> </asp:regularexpressionvalidator>
           

</form>
</body>
</html>
