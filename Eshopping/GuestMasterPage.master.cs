using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GuestMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void Home_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Default.aspx");
    //}

    //protected void Product_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("guestshopping_cart.aspx");

    //}

    protected void Contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }
}
