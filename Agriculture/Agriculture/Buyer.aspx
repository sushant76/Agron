<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buyer.aspx.cs" Inherits="Buyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css/bootstrap.css" />    
     <link rel="stylesheet" href="Css/Sheet.css" /> 
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" "/> 
</head>
<body style="background-image:url(../Images/seller.jpg);background-size:cover;background-position:inherit">
    <form id="form1" runat="server">
        <h1 class="form-heading" style="margin-left:600px;color:black" >Hello Buyer!

      </h1>  

   <h1 style="margin-left:450px;color:black">Lets see what's there in the store for you</h1>
  
 <div class="container-fluid">
        <div class="container">
       
    
            
              <br />
            <asp:Button ID="Button1" runat="server" class="btn btn-info btn-lg" Text="View Crop Price"   onClick="btn_view_crop" />
           <div id="div1" class="form-group">
               <asp:GridView ID="GridView1" BorderColor="Black"  CssClass="table" runat="server" AutoGenerateColumns="false" AllowPaging="true"  PageSize="14">
                        <Columns>
                          <asp:BoundField ItemStyle-Width="150px" DataField="CropName" HeaderText="Crop Name" />
                         
                          <asp:BoundField ItemStyle-Width="150px" DataField="Price" HeaderText="Price" />
       
        
                        </Columns>
                   <RowStyle CssClass="rowStyle" ForeColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                   <HeaderStyle CssClass="headerStyle" ForeColor="Red" Font-Bold="true" Font-Size="Medium" />
                   
                       </asp:GridView>
            <asp:Label ID="Label1" runat="server"  Visible="false"></asp:Label>
        </div>
          <br />
   
              <div class="form-group">
            <asp:Button ID="Button2" runat="server" class="btn btn-info btn-lg" Text="View Crop Uploads"   onClick="btn_view_crop_upload" />
                  <br /><br />
           <div id="div2" class="form-group" runat="server"  visible="false">            
       
               <asp:Button ID="Button5" runat="server" class="btn btn-info btn-lg"  Text="SortBy" OnClick="SortBy" />
           <br /><br />
         <div id="div4" style="display:flex" visible="false" runat="server">
                <div class="col-sm">
            <asp:DropDownList ID="DropDownList1" class="btn btn-primary dropdown-toggle" runat="server" AutoPostBack="true" AppendDataBoundItems="true"  OnSelectedIndexChanged="Dropdown" >  
            <asp:ListItem Value="-1">--Select State--</asp:ListItem> 
               
        </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="DropDownList1"  InitialValue="-1" runat="server" ErrorMessage="Select a state" ForeColor="red"></asp:RequiredFieldValidator>
                </div>


               
                 <div class="col-sm">  
            <asp:DropDownList ID="DropDownList2" class="btn btn-primary dropdown-toggle" runat="server" AutoPostBack="true" AppendDataBoundItems="true"  >  
          <asp:ListItem Value="-1">--Select City--</asp:ListItem> 
        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="DropDownList2"  InitialValue="-1" runat="server" ErrorMessage="Select a state" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
             
             <div class="col-sm">
            <asp:DropDownList ID="DropDownList3" class="btn btn-primary dropdown-toggle" runat="server" AutoPostBack="true" AppendDataBoundItems="true"   >  
            <asp:ListItem Value="-1">--Select Crop--</asp:ListItem> 
               
        </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DropDownList3"  InitialValue="-1" runat="server" ErrorMessage="Select a crop" ForeColor="red"></asp:RequiredFieldValidator>
               
    </div>
             <asp:Button ID="Button3" runat="server" class="btn btn-info btn-lg"  Text="Sort" OnClick="btn_sort" />

</div> 


                 <asp:GridView ID="GridView2" CssClass="table" runat="server" BorderColor="Black" AutoGenerateColumns="false" AllowPaging="true"  PageSize="14">
                        <Columns>
                          <asp:BoundField ItemStyle-Width="150px" DataField="CropName" HeaderText="Crop Name" />
                         
                          <asp:BoundField ItemStyle-Width="150px" DataField="Price" HeaderText="Price" />
                             <asp:BoundField ItemStyle-Width="150px" DataField="Sellername" HeaderText="Seller Name" />

                            
                     
                          <asp:BoundField ItemStyle-Width="150px" DataField="Quantity" HeaderText="Quantity" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="Amount" HeaderText="Amount" />
                          <asp:BoundField ItemStyle-Width="150px" DataField="State" HeaderText="State" />
       
                          <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
       
        
        
                        </Columns>
                         <RowStyle CssClass="rowStyle" ForeColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                   <HeaderStyle CssClass="headerStyle" ForeColor="Red" Font-Bold="true" Font-Size="Medium" />
                       </asp:GridView>
            <asp:Label ID="Label2" runat="server" CssClass="display-3" ForeColor="Red"  Visible="false"></asp:Label>
          </div></div>
                    
            <div class="form-group">
 
        <asp:Button ID="Button4" class="btn btn-info btn-lg" runat="server" Text="Buy Crop" OnClick="buyCrop"  />
         <br /><br />
               <div id="div6" style="display:flex" visible="false" runat="server">
                <div class="form-group">
                    
            <asp:DropDownList ID="DropDownList4" Font-Size="Medium"  class="btn btn-warning dropdown-toggle" runat="server" AutoPostBack="true" AppendDataBoundItems="true"  OnSelectedIndexChanged="Dropdown_4" >  
            <asp:ListItem Value="-1">--Select your State--</asp:ListItem> 
               
        </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DropDownList4"  InitialValue="-1" runat="server" ErrorMessage="Select a state" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
             
             <div class="form-group">
                     
            <asp:DropDownList ID="DropDownList6"  Font-Size="Medium" class="btn btn-warning dropdown-toggle" runat="server" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="CropSellText"   >  
            <asp:ListItem Value="-1">--Select Crop--</asp:ListItem> 
               
        </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="DropDownList6"  InitialValue="-1" runat="server" ErrorMessage="Select a crop" ForeColor="red" ></asp:RequiredFieldValidator>
                </div>
      </div>  <asp:TextBox ID="TextBox2" runat="server" Visible="false" placeholder="Enter Quantity(in kgs)" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox1" runat="server" Visible="false" Text="Amount" Enabled="false" ></asp:TextBox>
                <br />
                <br />
        <asp:Button ID="Button6" class="btn btn-info btn-lg" Visible="false" runat="server" OnClick="buy"  Text="Buy" />
        
  </div>
            <div class="form-group" id="radio" runat="server" visible="false" >
            <div class="container">
                <asp:Label ID="Label4" runat="server" CssClass="display-3" ForeColor="Yellow" Text="Your transaction was successful"></asp:Label>
                 
                <asp:Label ID="Label5" runat="server" CssClass="display-3" ForeColor="Yellow" Text="Want to continue?"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button8" class="btn btn-warning btn-lg" runat="server" Text="Yes" OnClick="Choice1" />
                <asp:Button ID="Button9" class="btn btn-warning btn-lg" runat="server" Text="No" OnClick="Choice2" />
            <div id="maildiv" class ="form-group" runat="server" visible="true">
                <asp:Label ID="Label3" runat="server" CssClass="display-3" Text="Click for receipt" ForeColor="Red" ></asp:Label>
               
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter you email address"  Enabled="true" ></asp:TextBox>
                   <asp:Button ID="Button7" class="btn btn-info btn-lg" runat="server" OnClick="sendmail"  Text="Send Mail" />
                <asp:Label ID="lblMessage" runat="server" CssClass="display-3" Visible="false"  ></asp:Label>
            </div>
                </div>
           </div>
           
             <div style="float:right">
                  <asp:HyperLink ID="HyperLink4"  runat="server" class="btn btn-info btn-lg" NavigateUrl="Logout.aspx">Logout</asp:HyperLink>
             </div> 
        </div><br /><br /> </div></form>
</body>
</html>
