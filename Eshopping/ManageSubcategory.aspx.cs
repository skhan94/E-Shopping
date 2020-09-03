using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageSubcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["admin"]) != 1)
        {
            Response.Redirect("admin.aspx");
        }
    }
}