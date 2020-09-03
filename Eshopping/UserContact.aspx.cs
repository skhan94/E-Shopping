using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER"] == null)
        {
            Response.Redirect("Contact.aspx");
            // Label3.Text = Session["USER"].ToString();
            //  Session["count"] = 0;
        }
    }
}