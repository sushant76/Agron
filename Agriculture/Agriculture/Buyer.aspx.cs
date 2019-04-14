using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using System.Net;
using System.Net.Mail;
using System.Drawing;

public partial class Buyer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


    }
    protected void btn_view_crop(object sender, EventArgs e)
    {


        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("cropview", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        // sqlCmd.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
        sqlCmd.ExecuteNonQuery();



        using (SqlDataAdapter sda = new SqlDataAdapter())
        {
            sqlCmd.Connection = con;
            sda.SelectCommand = sqlCmd;
            SqlDataReader reader = sqlCmd.ExecuteReader();

            reader.Read();

            if (!reader.HasRows)
            {
                Label1.Text = "No Data";
                Label1.Visible = true;
                reader.Close();
            }
            else
            {
                reader.Close();

                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        con.Close();
    }
    protected void btn_view_crop_upload(object sender, EventArgs e)
    {
        div2.Visible = true;
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd1 = new SqlCommand("RegState", sqlCon);
            sqlCmd1.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();

            sqlCmd1.ExecuteNonQuery();
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = sqlCmd1;
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
        // string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("cropUploaded", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        // sqlCmd.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
        sqlCmd.ExecuteNonQuery();



        using (SqlDataAdapter sda = new SqlDataAdapter())
        {
            sqlCmd.Connection = con;
            sda.SelectCommand = sqlCmd;
            SqlDataReader reader1 = sqlCmd.ExecuteReader();

            reader1.Read();

            if (!reader1.HasRows)
            {
                Label2.Text = "No Data";
                Label2.Visible = true;
                reader1.Close();
            }
            else
            {
                reader1.Close();

                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();


                }
            }
        }
        con.Close();
        //string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd2 = new SqlCommand("cropview", sqlCon);
            sqlCmd2.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();

            sqlCmd2.ExecuteNonQuery();
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = sqlCmd2;
            dap.Fill(dt);


            if (dt.Rows.Count > 0)
            {

                DropDownList3.DataSource = dt;


                DropDownList3.DataTextField = "CropName"; // the items to be displayed in the list items

                DropDownList3.DataValueField = "CropId"; // the id of the items displayed

                DropDownList3.DataBind();


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
            SqlCommand sqlCmd1 = new SqlCommand("RegCity", sqlCon);
            sqlCmd1.CommandType = CommandType.StoredProcedure;


            sqlCmd1.Parameters.AddWithValue("@StateId", DropDownList1.SelectedItem.Value);
            DataTable dt = new DataTable();
            sqlCmd1.ExecuteNonQuery();
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = sqlCmd1;
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
    protected void btn_sort(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("Sort", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@CityId", DropDownList2.SelectedItem.Value);
        sqlCmd.Parameters.AddWithValue("@StateId", DropDownList1.SelectedItem.Value);
        sqlCmd.Parameters.AddWithValue("@CropId", DropDownList3.SelectedItem.Value);
        sqlCmd.ExecuteNonQuery();



        using (SqlDataAdapter sda = new SqlDataAdapter())
        {
            sqlCmd.Connection = con;
            sda.SelectCommand = sqlCmd;
            SqlDataReader reader1 = sqlCmd.ExecuteReader();

            reader1.Read();

            if (!reader1.HasRows)
            {
                Label2.Text = "No Data";
                Label2.Visible = true;
                GridView2.Visible = false;
                reader1.Close();
            }
            else
            {
                Label2.Visible = false;
                GridView2.Visible = true;
                reader1.Close();

                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
            }
        }
        con.Close();


    }



    protected void SortBy(object sender, EventArgs e)
    {
        div4.Visible = true;
    }

    protected void buyCrop(object sender, EventArgs e)
    {

        div6.Visible = true;
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd1 = new SqlCommand("RegState", sqlCon);
            sqlCmd1.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();

            sqlCmd1.ExecuteNonQuery();
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = sqlCmd1;
            dap.Fill(dt);


            if (dt.Rows.Count > 0)
            {

                DropDownList4.DataSource = dt;


                DropDownList4.DataTextField = "StateName"; // the items to be displayed in the list items

                DropDownList4.DataValueField = "StateId"; // the id of the items displayed

                DropDownList4.DataBind();

            }
            sqlCon.Close();
        }
        Button6.Visible = true;
    }
    protected void Dropdown_4(object sender, EventArgs e)
    {

        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            //  SqlCommand sqlCmd1 = new SqlCommand("RegCity", sqlCon);
            //sqlCmd1.CommandType = CommandType.StoredProcedure;


            //sqlCmd1.Parameters.AddWithValue("@StateId", DropDownList4.SelectedItem.Value);
            //DataTable dt = new DataTable();
            //sqlCmd1.ExecuteNonQuery();
            //SqlDataAdapter dap = new SqlDataAdapter();
            //dap.SelectCommand = sqlCmd1;
            //dap.Fill(dt);


            //if (dt.Rows.Count > 0)
            //{
            //  DropDownList5.Items.Clear();
            // DropDownList5.Items.Add("Select City");
            // DropDownList5.DataSource = dt;

            //DropDownList5.DataTextField = "CityName"; // the items to be displayed in the list items

            //DropDownList5.DataValueField = "CityId"; // the id of the items displayed

            //                DropDownList5.DataBind();

            // }
            //sqlCon.Close();
            // using (SqlConnection sqlCon = new SqlConnection(strcon))
            //{
            //  sqlCon.Open();

            SqlCommand sqlCmd2 = new SqlCommand("Cropfromstate", sqlCon);
            sqlCmd2.Parameters.AddWithValue("@StateId", DropDownList4.SelectedItem.Value);
            sqlCmd2.CommandType = CommandType.StoredProcedure;
            DataTable dt1 = new DataTable();

            sqlCmd2.ExecuteNonQuery();
            SqlDataAdapter dap1 = new SqlDataAdapter();
            dap1.SelectCommand = sqlCmd2;
            dap1.Fill(dt1);


            if (dt1.Rows.Count > 0)
            {
                DropDownList6.Items.Clear();
                DropDownList6.Items.Add("Select Crop");
                DropDownList6.DataSource = dt1;


                DropDownList6.DataTextField = "CropName"; // the items to be displayed in the list items

                DropDownList6.DataValueField = "CropId"; // the id of the items displayed

                DropDownList6.DataBind();

            }
            else
            {
                DropDownList6.Items.Clear();
                DropDownList6.Items.Add("No data");
            }

            sqlCon.Close();
        }
    }

    protected void buy(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("buyCrop", con);

        sqlCmd.CommandType = CommandType.StoredProcedure;

        // sqlCmd.Parameters.AddWithValue("@UserId", Application["name1"].ToString());
        sqlCmd.Parameters.AddWithValue("@StateId", DropDownList4.SelectedItem.Value);
        sqlCmd.Parameters.AddWithValue("@CropId", DropDownList6.SelectedItem.Value);
        // Convert.ToInt64(TextBox2.Text);
        //Convert.ToInt64(TextBox1.Text);
        sqlCmd.Parameters.AddWithValue("@Quantity", TextBox2.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Price", TextBox1.Text.Trim());
        sqlCmd.ExecuteNonQuery();
        radio.Visible = true;
    }
    protected void Choice1(object sender, EventArgs e)
    {
        Button6.Enabled = true;
        Response.Redirect("Buyer.aspx");
    }
    protected void Choice2(object sender, EventArgs e)
    {
        Button6.Enabled = false;
    }
    protected void CropSellText(object sender, EventArgs e)
    {
        TextBox2.Visible = true;
        CropAmountText(TextBox2.Text.Trim());

    }
    protected void CropAmountText(String a)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand sqlCmd = new SqlCommand("getCropPrice", con);
        sqlCmd.Parameters.AddWithValue("@CropName", DropDownList6.SelectedItem.ToString());
        sqlCmd.CommandType = CommandType.StoredProcedure;

        sqlCmd.ExecuteNonQuery();
        SqlDataReader reader = sqlCmd.ExecuteReader();


        if (reader.HasRows)
        {
            reader.Read();
            TextBox1.Text = reader["Price"].ToString();// + "(Price in kgs)";
            TextBox1.Visible = true;
            reader.Close();
        }
        else
        {
            TextBox1.Visible = false;
        }
    }
    protected void sendmail(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        // con.Open();
        // SqlCommand sqlCmd = new SqlCommand("Login", con);
        string username = string.Empty;
        string password = string.Empty;
        //  string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (con)
        {
            using (SqlCommand cmd = new SqlCommand("SELECT Email,Password FROM UserReg WHERE Email = @Email"))
            {
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text.Trim());
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        username = sdr["Email"].ToString();
                        password = sdr["Password"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(password))
        {


            MailMessage mailMessage = new MailMessage("", "");
            mailMessage.Priority = System.Net.Mail.MailPriority.High;
            mailMessage.Body = "Crop purchased is = "+ DropDownList6.SelectedItem +" and amount is= " +TextBox1.Text ;
            mailMessage.IsBodyHtml = true;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 25);
            smtpClient.EnableSsl = true;
            NetworkCredential credentials = new NetworkCredential("", "");
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = credentials;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Credentials = credentials;
            smtpClient.Send(mailMessage);

            lblMessage.ForeColor = Color.Yellow;

            lblMessage.Text = "Email is sent";
            lblMessage.Visible = true;
            Button7.Enabled = false;
            // div3.Visible = true;
        }
        else
        {
            // div3.Visible = false;
            Button7.Enabled = true;
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "This email address does not match our records.";
            lblMessage.Visible = true;
        }

    }
}