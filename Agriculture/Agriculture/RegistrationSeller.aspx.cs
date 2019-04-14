using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class RegistrationSeller : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("RegState", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();

            sqlCmd.ExecuteNonQuery();
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = sqlCmd;
            dap.Fill(dt);


            if (dt.Rows.Count > 0)
            {

                DropDownList1.DataSource = dt;


                DropDownList1.DataTextField = "StateName"; // the items to be displayed in the list items

                DropDownList1.DataValueField = "StateId"; // the id of the items displayed

                DropDownList1.DataBind();

            }
            sqlCon.Close();
        }


    }

    protected void Dropdown(object sender, EventArgs e)
    {

        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("RegCity", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;


            sqlCmd.Parameters.AddWithValue("@StateId", DropDownList1.SelectedItem.Value);
            DataTable dt = new DataTable();
            sqlCmd.ExecuteNonQuery();
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = sqlCmd;
            dap.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("Select City");
                DropDownList2.DataSource = dt;

                DropDownList2.DataTextField = "CityName"; // the items to be displayed in the list items

                DropDownList2.DataValueField = "CityId"; // the id of the items displayed

                DropDownList2.DataBind();

            }
            sqlCon.Close();

        }
    }

    protected void btn_RegUser(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("RegUser", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;


          //  sqlCmd.Parameters.AddWithValue("@UserTypeId", 2);
            sqlCmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Phone", TextBox4.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@CityId", DropDownList2.SelectedItem.Value);
          //  sqlCmd.Parameters.AddWithValue("@StateId", DropDownList1.SelectedItem.Value);
            sqlCmd.ExecuteNonQuery();

            SqlCommand sqlCmd1 = new SqlCommand("getUserId", sqlCon);
            sqlCmd1.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
            sqlCmd1.Parameters.AddWithValue("@Type", "Seller");
            sqlCmd1.CommandType = CommandType.StoredProcedure;
          
            sqlCmd1.ExecuteNonQuery();
            SqlDataReader reader = sqlCmd1.ExecuteReader();
            reader.Read();

            Application["name1"] = reader["UserId"].ToString();
            reader.Close();
            SqlCommand sqlCmd2 = new SqlCommand("User_Type", sqlCon);
            sqlCmd2.Parameters.AddWithValue("@UserId",  Application["name1"].ToString());
            sqlCmd2.Parameters.AddWithValue("@Type", "Seller");
            sqlCmd2.CommandType = CommandType.StoredProcedure;

            sqlCmd2.ExecuteNonQuery();
            Response.Redirect("Seller.aspx");

        }
    }
}