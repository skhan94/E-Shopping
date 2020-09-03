using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

public partial class dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Convert.ToInt32(Session["admin"])!=1)
        {
            Response.Redirect("admin.aspx");
        }

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn.Open();
        string productcheck = "select count(*) from product";
        SqlCommand com = new SqlCommand(productcheck, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        Label3.Text = temp.ToString();

        string usercheck = "select count(*) from customer";
        SqlCommand com1 = new SqlCommand(usercheck, conn);
        int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
        Label4.Text = temp1.ToString();
        

        string ordercheck = "select count(*) from [order]";
        SqlCommand com2 = new SqlCommand(ordercheck, conn);
        int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());
        Label2.Text = temp2.ToString();
        conn.Close();
    }



}