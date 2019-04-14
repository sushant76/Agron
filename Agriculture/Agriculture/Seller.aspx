<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Seller.aspx.cs" Inherits="Seller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
   
        <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
         
     <link rel="stylesheet" href="Css/bootstrap.css" />    
     <link rel="stylesheet" href="Css/Sheet.css" /> 
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" "/>    
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     
   
</head>
<body style="background-image:url(../Images/seller.jpg);background-size:cover;background-repeat:no-repeat">
    
    <form id="form1" runat="server">
         <h1 class="form-heading"style="margin-left:600px;color:black" >Hello Seller!</h1>  
         <h1 style="margin-left:450px;color:black">The market is waiting for your crops</h1>
              
        
        <div class="container">
            <br />
           <asp:Button ID="Button1"  class="btn btn-warning btn-lg" runat="server" Text="View Crop Price"   onClick="btn_view_crop" />
           <div id="div2" class="form-group"> 
               <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="false" AllowPaging="true"  PageSize="14">
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
            <asp:Button ID="Button2"  class="btn btn-warning btn-lg" runat="server" Text="Sell Crop" OnClick="sellCrop"  /> 
       <br /><br />
         <div id="div1" runat="server" class="form-group" visible="false" > 
           <div style="display:flex;font-size:large">


               <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="Check1" AutoPostBack="true" Text="Wheat" />
                   </div>
               <div class="form-group col-md-6"  style="display:flex">
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
           </div> </div>
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="Check2" AutoPostBack="true" Text="Maize" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>

        <div style="display:flex;font-size:large">
        <div class="form-group col-md-6"  style="display:flex;color:yellow">
            <asp:CheckBox ID="CheckBox3" runat="server" OnCheckedChanged="Check3" AutoPostBack="true" Text="Rice" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox4" runat="server" OnCheckedChanged="Check4" AutoPostBack="true" Text="Millets" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox5" runat="server" OnCheckedChanged="Check5" AutoPostBack="true" Text="Pulses" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox6" runat="server" OnCheckedChanged="Check6" AutoPostBack="true" Text="Sugarcane" />
       </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox7" runat="server" OnCheckedChanged="Check7" AutoPostBack="true" Text="Tobacco" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox8" runat="server" OnCheckedChanged="Check8" AutoPostBack="true" Text="Cotton" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
            <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox9" runat="server" OnCheckedChanged="Check9" AutoPostBack="true" Text="Jute" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox10" runat="server" OnCheckedChanged="Check10" AutoPostBack="true" Text="Oilseeds" />
       </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox11" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>

        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox11" runat="server" OnCheckedChanged="Check11" AutoPostBack="true" Text="Coffee" />
      </div>
            <div class="form-group col-md-6"  style="display:flex">
            <asp:TextBox ID="TextBox12" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox12" runat="server" OnCheckedChanged="Check12" AutoPostBack="true" Text="Coconut" />
       </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox13" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
        
        <div style="display:flex;font-size:large">
            <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox13" runat="server" OnCheckedChanged="Check13" AutoPostBack="true" Text="Tea" />
        </div>
            <div class="form-group col-md-6"  style="display:flex">
                <asp:TextBox ID="TextBox14" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>

         <div style="display:flex;font-size:large">
             <div class="form-group col-md-6"  style="display:flex;color:yellow">
        <asp:CheckBox ID="CheckBox14" runat="server" OnCheckedChanged="Check14" AutoPostBack="true" Text="Rubber" />
       </div>
             <div class="form-group col-md-6"  style="display:flex">
                 <asp:TextBox ID="TextBox15" runat="server" placeholder="Enter quantity(in kgs)"  style="display:none"></asp:TextBox>
            </div></div>
             </div>
        
                        <asp:Label ID="lbmsg" runat="server"></asp:Label>
           
      
           
    <br /><br />
             
       <div class="form-group">
          <asp:Button ID="Button3"  Visible="false"  class="btn btn-warning btn-lg" runat="server" onclick="Button3_Click" Text="Upload" />
          
   </div>
            <div class="form-group" id="radio" runat="server" visible="false" >
            <div class="container">
                <asp:Label ID="Label2" runat="server" CssClass="display-3" ForeColor="Yellow" Text="Your upload was successful"></asp:Label>
                 
                <asp:Label ID="Label3" runat="server" CssClass="display-3" ForeColor="Yellow" Text="Want to continue?"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button4" class="btn btn-warning btn-lg" runat="server" Text="Yes" OnClick="Choice1" />
                <asp:Button ID="Button5" class="btn btn-warning btn-lg" runat="server" Text="No" OnClick="Choice2" />
            
            <div id="maildiv" class ="form-group" runat="server" visible="true">
                <asp:Label ID="Label5" runat="server" CssClass="display-3" Text="Click for receipt" ForeColor="Red" ></asp:Label>
               
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter you email address"  Enabled="true" ></asp:TextBox>
                   <asp:Button ID="Button9" class="btn btn-info btn-lg" runat="server" OnClick="sendmail"  Text="Send Mail" />
                <asp:Label ID="lblMessage" runat="server" CssClass="display-3" Visible="false" ForeColor="Red" ></asp:Label>
            </div>
           
           </div>
           </div>
           <div class="form-group">
            <asp:Button ID="Button6" runat="server" class="btn btn-info btn-lg" Text="View Crop Uploads"   onClick="btn_view_crop_upload" />
                  <br /><br />
           <div id="div3" class="form-group" runat="server"  visible="false">            
       
               <asp:Button ID="Button7" runat="server" class="btn btn-info btn-lg"  Text="SortBy" OnClick="SortBy" />
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
             <asp:Button ID="Button8" runat="server" class="btn btn-info btn-lg"  Text="Sort" OnClick="btn_sort" />

</div> 


                 <asp:GridView ID="GridView2" CssClass="table" runat="server" BorderColor="Black" AutoGenerateColumns="false" AllowPaging="true"  PageSize="14">
                        <Columns>
                          <asp:BoundField ItemStyle-Width="150px" DataField="CropName" HeaderText="Crop Name" />
                         
                          <asp:BoundField ItemStyle-Width="150px" DataField="Price" HeaderText="Price" />
                             <asp:BoundField ItemStyle-Width="150px" DataField="Sellername" HeaderText="Seller Name" />

                            
                     
                          <asp:BoundField ItemStyle-Width="150px" DataField="Quantity" HeaderText="Quantity" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="Amount" HeaderText="Amount" />
                          <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
       
        
        
                        </Columns>
                         <RowStyle CssClass="rowStyle" ForeColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                   <HeaderStyle CssClass="headerStyle" ForeColor="Red" Font-Bold="true" Font-Size="Medium" />
                       </asp:GridView>
            <asp:Label ID="Label4" runat="server" CssClass="display-3" ForeColor="Red"  Visible="false"></asp:Label>
          </div></div>
            <div  style="float:right">
    <asp:HyperLink ID="HyperLink4"  class="btn btn-warning btn-lg" runat="server" NavigateUrl="Logout.aspx">Logout</asp:HyperLink>
                </div><br /><br />
  </div>  </form>  
</body>
</html>
