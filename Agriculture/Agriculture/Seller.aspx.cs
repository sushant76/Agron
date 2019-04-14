using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Drawing;

public partial class Seller : System.Web.UI.Page
{
    //String c="";
    //String b = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        // Configure the message box to be displayed
        /* string messageBoxText = "Do you want to save changes?";
         string caption = "Word Processor";
         MessageBoxButton button = MessageBoxButton.YesNoCancel;
         MessageBoxImage icon = MessageBoxImage.Warning;*/
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
    protected void Check1(object sender, EventArgs e)
    {
        TextBox1.Style["display"] = "block";
    }
    protected void Check2(object sender, EventArgs e)
    {
        TextBox3.Style["display"] = "block";
    }
    protected void Check3(object sender, EventArgs e)
    {
        TextBox4.Style["display"] = "block";
    }
    protected void Check4(object sender, EventArgs e)
    {
        TextBox5.Style["display"] = "block";
    }
    protected void Check5(object sender, EventArgs e)
    {
        TextBox6.Style["display"] = "block";
    }
    protected void Check6(object sender, EventArgs e)
    {
        TextBox7.Style["display"] = "block";
    }
    protected void Check7(object sender, EventArgs e)
    {
        TextBox8.Style["display"] = "block";
    }
    protected void Check8(object sender, EventArgs e)
    {
        TextBox9.Style["display"] = "block";
    }
    protected void Check9(object sender, EventArgs e)
    {
        TextBox10.Style["display"] = "block";

    }
    protected void Check10(object sender, EventArgs e)
    {
        TextBox11.Style["display"] = "block";
    }
    protected void Check11(object sender, EventArgs e)
    {
        TextBox12.Style["display"] = "block";
    }
    protected void Check12(object sender, EventArgs e)
    {
        TextBox13.Style["display"] = "block";
    }
    protected void Check13(object sender, EventArgs e)
    {
        TextBox14.Style["display"] = "block";
    }
    protected void Check14(object sender, EventArgs e)
    {
        TextBox15.Style["display"] = "block";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        if (CheckBox1.Checked)
        { sendData(1, TextBox1); }
        if (CheckBox2.Checked)
        { sendData(2, TextBox3); }
        if (CheckBox3.Checked)
        { sendData(3, TextBox4); }
        if (CheckBox4.Checked)
        { sendData(4, TextBox5); }
        if (CheckBox5.Checked)
        { sendData(5, TextBox6); }
        if (CheckBox6.Checked)
        { sendData(6, TextBox7); }
        if (CheckBox7.Checked)
        { sendData(7, TextBox8); }
        if (CheckBox8.Checked)
        { sendData(8, TextBox9); }
        if (CheckBox9.Checked)
        { sendData(9, TextBox10); }
        if (CheckBox10.Checked)
        { sendData(10, TextBox11); }
        if (CheckBox11.Checked)
        { sendData(11, TextBox12); }
        if (CheckBox12.Checked)
        { sendData(12, TextBox13); }
        if (CheckBox13.Checked)
        { sendData(13, TextBox14); }
        if (CheckBox14.Checked)
        { sendData(14, TextBox15); }

        radio.Visible = true;
        /* string RBLgh = gender.SelectedItem != null ? gender.SelectedItem.Value : string.Empty;

         if (RBLgh == "Yes") { Button3.Enabled = false; }
         else if (RBLgh == "No") { Button3.Enabled = true; }*/
    }
    protected void sellCrop(object sender, EventArgs e)
    {
        div1.Visible = true;
        Button3.Visible = true;

        
    }
    protected void sendData(int a, TextBox t)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Agriculture; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("sellCrop", con);

        sqlCmd.CommandType = CommandType.StoredProcedure;

        sqlCmd.Parameters.AddWithValue("@UserId", Application["name1"].ToString());
        sqlCmd.Parameters.AddWithValue("@CropId", a);
        sqlCmd.Parameters.AddWithValue("@Quantity", t.Text);
        sqlCmd.Parameters.AddWithValue("@Type", "Seller");
        sqlCmd.ExecuteNonQuery();
        radio.Visible = false;
        // c = c + "\t" + a;
        // b = b + "\t" + t;
        //  Response.Write(c);
        // Response.Write(b);


        // Response.Write("<script>alert('Your upload was successful')</script>");
        // Response.Redirect("Seller.aspx");
    }
    protected void Choice1(object sender, EventArgs e)
    {
        Response.Redirect("Seller.aspx");
        Button3.Enabled = true;
       // radio.Visible = false;

    }
    protected void Choice2(object sender, EventArgs e)
    {
        Button3.Enabled = false;
    }
    protected void btn_view_crop_upload(object sender, EventArgs e)
    {
        div3.Visible = true;
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
    protected void SortBy(object sender, EventArgs e)
    {
        div4.Visible = true;
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
                Label4.Text = "No Data";
                Label4.Visible = true;
                GridView2.Visible = false;
                reader1.Close();
            }
            else
            {
                Label4.Visible = false;
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
            using (SqlCommand cmd = new SqlCommand("SELECT Email, Password FROM UserReg WHERE Email = @Email"))
            {
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
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
            mailMessage.Body = "Crop was sold.";
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
            Button9.Enabled = false;
            // div3.Visible = true;
        }
        else
        {
            // div3.Visible = false;
            Button9.Enabled = true;
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "This email address does not match our records.";
            lblMessage.Visible = true;
        }

    }
}