using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USER"]==null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        Response.Redirect("shopping_cart.aspx");
    }
}