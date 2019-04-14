using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class StudentReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("CUser", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure; 
            sqlCmd.Parameters.AddWithValue("@USN", TextBox1.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@StudentFirstName", TextBox2.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@StudentLastName", TextBox3.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Department", TextBox4.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Semester", TextBox5.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", TextBox6.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", TextBox7.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@CollegeName", TextBox8.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@CollegeAddress", TextBox9.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            Application["name1"] = TextBox1.Text;
            Response.Write("<script>alert('you are successfully registered')</script>");
            Response.Redirect("Main.aspx");

            clear();
        }
       
    }
    void clear()
    {
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text=TextBox7.Text=TextBox8.Text= TextBox8.Text= "";
    }

}