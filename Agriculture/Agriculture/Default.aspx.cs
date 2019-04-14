using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Cache.Remove("List");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand sqlCmd = new SqlCommand("Login", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());

        sqlCmd.ExecuteNonQuery();
        SqlDataReader rd = sqlCmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Close();

            if (gender.SelectedItem.Value == "Buyer")
            {

                SqlCommand sqlCmd1 = new SqlCommand("getUserid", con);
                sqlCmd1.CommandType = CommandType.StoredProcedure;
                sqlCmd1.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                sqlCmd1.Parameters.AddWithValue("@Type", "Buyer");
                sqlCmd1.ExecuteNonQuery();

                SqlDataReader rd1 = sqlCmd1.ExecuteReader();
                if (rd1.HasRows)
                {
                    rd1.Read();

                    Application["name1"] = rd1["UserId"].ToString();
                    Response.Redirect("Buyer.aspx");
                }
                else
                {
                    Label4.Text = "Email does not exists as a buyer";
                    Label4.Visible = true;
                    HyperLink2.Visible = true;
                }
            }



            else if (gender.SelectedItem.Value == "Seller")
            {

                SqlCommand sqlCmd1 = new SqlCommand("getUserid", con);
                sqlCmd1.CommandType = CommandType.StoredProcedure;
                sqlCmd1.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                sqlCmd1.Parameters.AddWithValue("@Type", "Seller");
                sqlCmd1.ExecuteNonQuery();

                SqlDataReader rd1 = sqlCmd1.ExecuteReader();
                if (rd1.HasRows)
                {
                    rd1.Read();

                    Application["name1"] = rd1["UserId"].ToString();
                    Response.Redirect("Seller.aspx");
                }
                else
                {
                    Label4.Text = "Email does not exists as a seller";
                    Label4.Visible = true;
                    HyperLink2.Visible = true;
                }
            }
            else
            {
                Label4.Text = "Error";
                Label4.Visible = true;
            }
        }      

        
        else
        {
            // Label3.Visible = true;
            Label4.Text = "Invalid username or password.";
            Label4.Visible = true;
        }

    }
  /*  protected void rbtn_Clicked(object sender, EventArgs e)
    {
        if(rbtn1.Checked)
        {
            Re
        }
    }*/
}