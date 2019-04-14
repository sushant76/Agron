using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Example : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Check1(object sender, EventArgs e)
    {
        TextBox1.Style["display"] = "block";
    }
    protected void Button12(object sender, EventArgs e)
    {
        TextBox1.Style["display"] = "block";
    }
    protected void Submit(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            Response.Redirect("~/AddData.aspx");
        }
        else
        {
            Response.Redirect("~/ViewData.aspx");
        }
    }
}