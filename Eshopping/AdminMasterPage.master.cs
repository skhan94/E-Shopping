﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Admin.aspx");
    }

    protected void LButton1_Click1(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin.aspx");
    }
}
