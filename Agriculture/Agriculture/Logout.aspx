<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs"  EnableEventValidation="false" Inherits="Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<title>LogOut</title>
	<link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css/bootstrap.css" />    
     <link rel="stylesheet" href="Css/Sheet.css" /> 
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" "/>
    <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
</head>
<body style="background-image:url(../Images/bye.jpg);background-size:cover;background-repeat:no-repeat">
        <form id="form1" runat="server">
    
        <div class="container-fluid" style="margin:0 auto;position:center">
            <div class="row">
                <div class="col-sm">
                                        <div class="container-fluid" style="font-size:large;margin-top:150px"> 
                       
                         <h1 class="display-2" style="color:white;font:larger">Wanna Log Out? </h1>
                         <h1 class="display-5"style="color:white;font:larger">We'll see you soon..</h1>
                        
                         <h1 class="display-5" style="color:white;font:larger">Thankyou for using our services.....</h1>
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" class="btn btn-primary btn-lg btn-warning" >Logout</asp:HyperLink>  	
  <!-- <a class="btn btn-primary btn-lg" href="#" role="button">Login</a> -->
</div> 
                        

                </div>
                <div class="col-sm">
                </div>
                <div class="col-sm"></div>

	
             
           
      </div></div>
    
	</form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
