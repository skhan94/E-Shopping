using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class customer_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from customer where username='" + TextBoxuname.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from customer where username='" + TextBoxuname.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBoxPass.Text)
            {
                Session["USER"] = TextBoxuname.Text;
                // Response.Write("Password is Correct");
                // Label3.Text = "login";
                Session["count"] = 0;
                Response.Redirect("shopping_cart.aspx");

            }
            else
            {
                Label3.Text = "Password is not correct";
            }
        }
        else
        {
            // Label3.Text="Username or password is not correct");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from customer where username='" + TextBoxUsername.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //conn.Close();
            if (temp >= 1)
            {
                Label4.Text = "User already exists";

            }


            //SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection"].ConnectionString);
            //conn1.Open();
            else
            {
                string InsertQuery = "insert into customer (username,password,email_id,status) values (@uname,@pwd,@e_id, @status)";
                SqlCommand com1 = new SqlCommand(InsertQuery, conn);
                com1.Parameters.AddWithValue("@uname", TextBoxUsername.Text);
                com1.Parameters.AddWithValue("@pwd", TextBoxpassword.Text);
                com1.Parameters.AddWithValue("@e_id", TextBoxemail.Text);
                com1.Parameters.AddWithValue("@status", 1.ToString());
                com1.ExecuteNonQuery();
                //Label4.Text="Registration is successful";
                Session["USER"] = TextBoxUsername.Text;
                Session["count"] = 0;
                Response.Redirect("shopping_cart.aspx");
                conn.Close();
            }

        }
        catch (Exception ex)
        {
            Label4.Text = "error" + ex.ToString();
        }
    }
}