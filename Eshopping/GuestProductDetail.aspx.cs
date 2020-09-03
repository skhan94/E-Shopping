using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class GuestProductDetail : System.Web.UI.Page
{
    public static int j = 0;
    public static int i = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["USER"] != null)
        //{
        //    Label4.Text = Session["USER"].ToString();
        //    //Session["count"] = 0;
        //    Label3.Text = Session["count"].ToString(); ;
        //}
        //else
        //{
        //    Response.Redirect("customer-register.aspx");
        //}
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn.Open();
        //string imagecheck = "select image.image1 from image inner join product on image.image_id=product.image_id where product.prod_id=" + Convert.ToInt32(Session["detail" + i]);
        //SqlCommand com3 = new SqlCommand(imagecheck, conn);
        //int temp2 = Convert.ToInt32(com3.ExecuteScalar().ToString());
        //string coverimage = "images/" + temp2;
        // CImage1.ImageUrl(coverimage);

        string pricecheck = "select prod_price from product where prod_id=" + Convert.ToInt32(Session["detail"]);
        SqlCommand com4 = new SqlCommand(pricecheck, conn);
        int temp3 = Convert.ToInt32(com4.ExecuteScalar().ToString());
        Label1.Text = "Rs." + temp3.ToString();

        string namecheck = "select prod_name from product where prod_id=" + Convert.ToInt32(Session["detail"]);
        SqlCommand com5 = new SqlCommand(namecheck, conn);
        string temp4 = com5.ExecuteScalar().ToString();
        Label7.Text = temp4;

        string desccheck = "select longdescription from product where prod_id=" + Convert.ToInt32(Session["detail"]);
        SqlCommand com6 = new SqlCommand(desccheck, conn);
        string temp5 = com6.ExecuteScalar().ToString();
        Label5.Text = temp5;

        string catcheck = "select category.cat_name  from category inner join product on category.category_id=product.category_id where product.prod_id=" + Convert.ToInt32(Session["detail"]);
        SqlCommand com7 = new SqlCommand(catcheck, conn);
        string temp6 = com7.ExecuteScalar().ToString();
        Label6.Text = temp6;


        string imagecheck1 = "select image.image1 from image inner join product on image.image_id=product.image_id where product.prod_id=" + Convert.ToInt32(Session["detail"]);
        SqlCommand com8 = new SqlCommand(imagecheck1, conn);
        string temp8 = com8.ExecuteScalar().ToString();
        IButton1.ImageUrl = "images/" + temp8;
        CoverImage1.ImageUrl = "images/" + temp8;

        string imagecheck2 = "select image.image2 from image inner join product on image.image_id=product.image_id where product.prod_id=" + Convert.ToInt32(Session["detail"]);
        SqlCommand com9 = new SqlCommand(imagecheck2, conn);
        string temp9 = com9.ExecuteScalar().ToString();
        IButton2.ImageUrl = "images/" + temp9;


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //i++;
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        //conn.Open();
        ////string prodcheck = "select prod_id from product where prod_id=" + Convert.ToInt32(Session["detail"]);
        ////SqlCommand com4 = new SqlCommand(prodcheck, conn);
        ////int temp3 = Convert.ToInt32(com4.ExecuteScalar().ToString());
        //Session["id" + i] = Convert.ToInt32(Session["detail"]);
        ////Session["count"] = Convert.ToInt32(Session["count"]);
        //Label3.Text = (Convert.ToInt32(Session["count"]) + 1).ToString();
        ////Session["count"] = i;

        //Session["count"] = Convert.ToInt32(Label3.Text);

        Response.Redirect("customer-register.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("customer-register.aspx");
    }

    protected void IButton1_Click(object sender, ImageClickEventArgs e)
    {
        string imageid = IButton1.ImageUrl;
        CoverImage1.ImageUrl = imageid;

    }

    protected void IButton2_Click(object sender, ImageClickEventArgs e)
    {
        string imageid1 = IButton2.ImageUrl;
        CoverImage1.ImageUrl = imageid1;

    }
}