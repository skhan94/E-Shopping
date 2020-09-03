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

public partial class AddProduct : System.Web.UI.Page
{
    public string fullFile, fullFile2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["admin"]) != 1)
        {
            Response.Redirect("admin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn.Open();
        try
        {
            string imagecheck = "select max(prod_id) from product";
            SqlCommand com3 = new SqlCommand(imagecheck, conn);
            int temp2 = Convert.ToInt32(com3.ExecuteScalar().ToString());
            string s = (temp2 + 1).ToString();

            if (FileUpload2.PostedFile != null)
            {

                string directory = "~/images/" + s + "/";
                string dirUrl = directory + this.Page.User.Identity.Name;
                string dirPath = Server.MapPath(dirUrl);


                if (!Directory.Exists(dirPath))
                {
                    Directory.CreateDirectory(dirPath);
                }

                //    string sfile1 = FileUpload1.FileName;
                string fileExt = System.IO.Path.GetExtension(FileUpload2.FileName);

                Random rnd2 = new Random();
                string myno2 = (rnd2.Next(1, 10000)).ToString();
               // Label1.Text = myno2;
                string sfile2 = myno2 + fileExt;
                fullFile = s + "/" + sfile2;
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/images/") + fullFile);
            }


            if (FileUpload3.PostedFile != null)
            {

                string directory = "~/images/" + s + "/";
                string dirUrl = directory + this.Page.User.Identity.Name;
                string dirPath = Server.MapPath(dirUrl);


                if (!Directory.Exists(dirPath))
                {
                    Directory.CreateDirectory(dirPath);
                }

                //    string sfile1 = FileUpload1.FileName;
                string fileExt1 = System.IO.Path.GetExtension(FileUpload2.FileName);

                Random rnd1 = new Random();
                string myno1 = (rnd1.Next(2, 10000)).ToString();
                string sfile1 = myno1 + fileExt1;
               // Label2.Text = myno1;
                fullFile2 = s + "/" + sfile1;
                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/images/") + fullFile2);
            }
            int num = 1;
            string Imagecheck = "insert into image (image1,image2,status) values (@i1, @i2, @status)";
            SqlCommand com1 = new SqlCommand(Imagecheck, conn);
            com1.Parameters.AddWithValue("@i1", fullFile);
            com1.Parameters.AddWithValue("@i2", fullFile2);
            com1.Parameters.AddWithValue("@status", num);
            com1.ExecuteNonQuery();
            string imagecheck1 = "select max(image_id) from image";
            SqlCommand com4 = new SqlCommand(imagecheck1, conn);
            int temp3 = Convert.ToInt32(com4.ExecuteScalar().ToString());
            
            // Label1.Text = temp3.ToString();
            string Productcheck2 = "insert into product (prod_name,prod_price,shortdescription,longdescription,category_id,subcat_id,image_id,status) values (@pname,@pprice,@sdesc,@ldesc,@cat,@subcat,@imageid,@status)";
            SqlCommand com2 = new SqlCommand(Productcheck2, conn);
            com2.Parameters.AddWithValue("@pname", TextBox11.Text);
            com2.Parameters.AddWithValue("@pprice", Convert.ToInt32(TextBox9.Text));
            com2.Parameters.AddWithValue("@sdesc", TextBox2.Text);
            com2.Parameters.AddWithValue("@ldesc", TextBox3.Text);
            com2.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Value);
            com2.Parameters.AddWithValue("@subcat", DropDownList2.SelectedItem.Value);
            com2.Parameters.AddWithValue("@imageid", temp3);
            com2.Parameters.AddWithValue("@status", num);
            com2.ExecuteNonQuery();


            Label1.Text = "Product Created";

        }




        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }

    }
}