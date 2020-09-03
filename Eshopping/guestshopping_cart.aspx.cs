using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class guestshopping_cart : System.Web.UI.Page
{
    public static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(!Page.IsPostBack)
        //{
        //    Session["count"] = 0;
        //}
        //if (Session["USER"] != null)
        //{
        //    Label3.Text = Session["USER"].ToString();
        //    Label1.Text = Session["count"].ToString();

        //}
        //else
        //{
        //    Response.Redirect("guestshopping_cart.aspx");
        //}

    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    //Label1.Text = 0.ToString();

    //}
    protected void Button2_Click2(object sender, EventArgs e)
    {
        string prd1;

        i++;
        Label1.Text = (Convert.ToInt32(Label1.Text) + 1).ToString();
        prd1 = ((Button)sender).CommandArgument.ToString();
        Session["detail"] = prd1;

        //Session["count"] = i;
        Response.Redirect("GuestProductDetail.aspx");


    }

    protected void DataList1_RowCommand(object sender, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AddToCart")
        {
            int index = Convert.ToInt32(e.CommandArgument);


        }
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    Label1.Text = 0.ToString();

    //}

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("customer-register.aspx");
    }

    //protected void Button3_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("checkout.aspx");
    //}
}