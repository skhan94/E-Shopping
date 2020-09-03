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

public partial class finalcheckout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER"] == null)
        {
            Response.Redirect("customer-register.aspx");
           
        }
        Label1.Text = (Session["amount"]).ToString();
        Label2.Text = (Session["totalamount"]).ToString();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn1.Open();


        string finalcheckout = "insert into [finalOrder](order_number,totalamount,status,username,firstName,lastName,address,cellnumber,paymode,emailid) values (@ordernum,@total,@status,@username,@fname,@lname,@address,@cellnum,@paymode,@email)";
        SqlCommand com2 = new SqlCommand(finalcheckout, conn1);
        com2.Parameters.AddWithValue("@ordernum", Convert.ToInt32(Session["ordernum"]));
        com2.Parameters.AddWithValue("@total", Convert.ToInt32(Session["totalamount"]));
        com2.Parameters.AddWithValue("@status", 1);
        com2.Parameters.AddWithValue("@username", Session["USER"].ToString());
        com2.Parameters.AddWithValue("@fname", TextBox1.Text);
        com2.Parameters.AddWithValue("@lname", TextBox2.Text);
        com2.Parameters.AddWithValue("@address", TextBox3.Text);
        com2.Parameters.AddWithValue("@cellnum", TextBox4.Text);
        com2.Parameters.AddWithValue("@paymode", DropDownList1.SelectedIndex);
        com2.Parameters.AddWithValue("@email", TextBox5.Text);
        com2.ExecuteNonQuery();
        if (DropDownList1.SelectedIndex == 0)
        {
            Response.Redirect("success.aspx");

        }


        //string usercheck = "update finalOrder set firstName={0},lastName={1},Address={2},cellnumber={3},paymentmode={4},email={5}) values (@fname,@lname,@address,@cellnum,@paymode,@email) where username='" + Session["USER"].ToString() + "'";
        //SqlCommand com1 = new SqlCommand(usercheck, conn1);
        //com1.Parameters.AddWithValue("@fname", TextBox1.Text);
        //com1.Parameters.AddWithValue("@lname", TextBox2.Text);
        //com1.Parameters.AddWithValue("@address", TextBox3.Text);
        //com1.Parameters.AddWithValue("@cellnum", Convert.ToInt32(TextBox4.Text));
        //com1.Parameters.AddWithValue("@paymode", DropDownList1.SelectedItem);
        //com1.Parameters.AddWithValue("@email", TextBox5.ToString());
        //com1.ExecuteNonQuery();
    }
}