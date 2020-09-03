using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Configuration;
using System.IO;
using System.Data;


public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["admin"]) != 1)
        {
            Response.Redirect("admin.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn1.Open();
        string Categorycheck1 = "insert into category (cat_name,cat_desc,status) values (@cname,@cdesc,@status)";
        SqlCommand com1 = new SqlCommand(Categorycheck1, conn1);
        com1.Parameters.AddWithValue("@cname", TextBox5.Text);
        com1.Parameters.AddWithValue("@cdesc", TextBox6.Text);
        com1.Parameters.AddWithValue("@status", 1.ToString());
        com1.ExecuteNonQuery();
        Label1.Text = "Category Added!";
        conn1.Close();
    }
}