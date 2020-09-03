using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Configuration;
using System.IO;
using System.Data;


public partial class AddSubCategory : System.Web.UI.Page
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
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn4.Open();
        string catcheck = "select count(*) from subcategory where subcat_name='" + TextBox7.Text + "'";
        SqlCommand com = new SqlCommand(catcheck, conn4);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        //conn.Close();
        if (temp >= 1)
        {
            Label2.Text = "category already exists";

        }
        else
        {
            string SubCategorycheck1 = "insert into subcategory (subcat_name,subcat_desc,category_id,status) values (@scname,@scdesc,@catid,@status)";
            SqlCommand com1 = new SqlCommand(SubCategorycheck1, conn4);
            com1.Parameters.AddWithValue("@scname", TextBox7.Text);
            com1.Parameters.AddWithValue("@scdesc", TextBox8.Text);
            com1.Parameters.AddWithValue("@catid", DropDownList3.SelectedValue);
            com1.Parameters.AddWithValue("@status", 1.ToString());
            com1.ExecuteNonQuery();

            Label1.Text = "Subcategory Added!";
            conn4.Close();
        }
    }
}