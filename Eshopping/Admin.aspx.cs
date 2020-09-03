using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        //conn.Open();
        //string checkuser = " select user_id from [user] where username='" + TextBox1.Text + "'";
        //SqlCommand com = new SqlCommand(checkuser, conn);
        //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        //conn.Close();
        //if (temp == 1)
        //{

        //    conn.Open();
        //    string checkPasswordQuery = "select password from [user] where username='" + TextBox1.Text + "'";
        //    SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
        //    string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
        //    if (password == TextBox2.Text)
        //    {
        //        Session["admin"] = 1;
        //        Response.Redirect("dashboard.aspx");
        //    }
        //}
        }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn.Open();
        string checkuser = " select user_id from [user] where username='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {

            conn.Open();
            string checkPasswordQuery = "select password from [user] where username='" + TextBox1.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox2.Text)
            {
                Session["admin"] = 1;
                Response.Redirect("dashboard.aspx");
            }
        }
    }
}