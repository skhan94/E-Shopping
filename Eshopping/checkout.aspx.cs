using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER"] == null)
        {
            Response.Redirect("customer-register.aspx");
            // Label3.Text = Session["USER"].ToString();
            //  Session["count"] = 0;
        }
        
        if (!Page.IsPostBack)
        {

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("ID"), new DataColumn("Name"), new DataColumn("Unit Price"), new DataColumn("Total Price") });

            for (int i = 1; i <= Convert.ToInt32(Session["count"]); i++)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
                conn.Open();

                string checkuser = "select prod_name from product where prod_id=" + Convert.ToInt32(Session["id" + i]);
                SqlCommand com = new SqlCommand(checkuser, conn);
                string temp = (com.ExecuteScalar()).ToString();


                string checkuser1 = "select prod_price from product where prod_id=" + Convert.ToInt32(Session["id" + i]);
                SqlCommand com1 = new SqlCommand(checkuser1, conn);
                int temp1 = Convert.ToInt32(com1.ExecuteScalar());

                string checkuser2 = "select prod_price from product where prod_id=" + Convert.ToInt32(Session["id" + i]);
                SqlCommand com2 = new SqlCommand(checkuser1, conn);

                int temp2 = Convert.ToInt32(com2.ExecuteScalar());
                //int quantity = Convert.ToInt32(((TextBox)GridViewRow.RowIndex.FindControl("TextBox1")).Text);

                //string temp3 = (Convert.ToInt32(temp2) * Convert.ToInt32(quantity)).ToString();

                dt.Rows.Add(Convert.ToInt32(Session["id" + i]), temp, temp1, temp2);


                ViewState["dt"] = dt;
                BindGrid();


                //foreach (GridViewRow row in GridView1.Rows)
                //{
                //    if (row.RowType == DataControlRowType.DataRow)
                //    {

                //        //Label1.Text = GridView1.Rows[0].Cells[4].Text;

                //        //Label1.Text = myString;
                //        //int quantity = Convert.ToInt32(((TextBox) .FindControl("TextBox1")).Text)


                //        for (int s = 0; s < GridView1.Rows.Count; i++)
                //        {

                //            TextBox box1 = (TextBox)GridView1.Rows[s].Cells[4].FindControl("TextBox1");
                //            int quantity = Convert.ToInt32(box1.Text);
                //            int price = Convert.ToInt32(GridView1.Rows[s].Cells[2].Text);
                //            int totalprice = quantity * price;
                //            GridView1.Rows[s].Cells[3].Text = totalprice.ToString();
                //            amount += totalprice;

                //        }


                //    }
                //}

                //Label1.Text = amount.ToString();

            }
                foreach (GridViewRow row in GridView1.Rows)
                {
                    int amount = 0;
                    if (row.RowType == DataControlRowType.DataRow)
                    {

                        //Label1.Text = GridView1.Rows[0].Cells[4].Text;

                        //Label1.Text = myString;
                        //int quantity = Convert.ToInt32(((TextBox) .FindControl("TextBox1")).Text)
                        for (int i = 0; i < GridView1.Rows.Count; i++)
                        {

                            //int index = (GridView)GridView1.Rows[i];
                            //DataTable dt = ViewState["dt"] as DataTable;
                            // dt.Rows[index].Delete();


                            TextBox box1 = (TextBox)GridView1.Rows[i].Cells[4].FindControl("TextBox1");
                            int quantity = Convert.ToInt32(box1.Text);
                            int price = Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);

                            int totalprice = quantity * price;
                            amount += totalprice;
                            GridView1.Rows[i].Cells[3].Text = totalprice.ToString();


                        }
                        Label1.Text = amount.ToString();
                        Label2.Text = (amount + 150).ToString();
                        //ViewState["dt"] = dt;

                        //BindGrid();

                    }

                }


            }
        
    }


    protected void BindGrid()
    {
        GridView1.DataSource = ViewState["dt"] as DataTable;
        GridView1.DataBind();
    }



    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {

        GridViewRow row = e.Row;
        // Intitialize TableCell list
        List<TableCell> columns = new List<TableCell>();
        foreach (DataControlField column in GridView1.Columns)
        {
            //Get the first Cell /Column
            TableCell cell = row.Cells[0];
            // Then Remove it after
            row.Cells.Remove(cell);
            //And Add it to the List Collections
            columns.Add(cell);
        }

        // Add cells
        row.Cells.AddRange(columns.ToArray());
    }

    //protected void OnRowDeleted(object sender, GridViewDeleteEventArgs e)
    //{
    //    int index = Convert.ToInt32(e.RowIndex);
    //    Label1.Text = "Product" + (GridView1.Rows[index].Cells[1]).ToString() + "is removed";
    //}


    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = Convert.ToInt32(e.RowIndex);
        DataTable dt = ViewState["dt"] as DataTable;
        dt.Rows[index].Delete();

        ViewState["dt"] = dt;
        BindGrid();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow row in GridView1.Rows)
        {
            int amount = 0;
            if (row.RowType == DataControlRowType.DataRow)
            {

                //Label1.Text = GridView1.Rows[0].Cells[4].Text;

                //Label1.Text = myString;
                //int quantity = Convert.ToInt32(((TextBox) .FindControl("TextBox1")).Text)
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {

                    //int index = (GridView)GridView1.Rows[i];
                    //DataTable dt = ViewState["dt"] as DataTable;
                    // dt.Rows[index].Delete();


                    TextBox box1 = (TextBox)GridView1.Rows[i].Cells[4].FindControl("TextBox1");
                    int quantity = Convert.ToInt32(box1.Text);
                    int price = Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);

                    int totalprice = quantity * price;
                    amount += totalprice;
                    GridView1.Rows[i].Cells[3].Text = totalprice.ToString();


                }
                Label1.Text = amount.ToString();
                Label2.Text = (amount + 150).ToString();
                //ViewState["dt"] = dt;

                //BindGrid();

            }

        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CM_Connection1"].ConnectionString);
        conn.Open();
        Random rnd2 = new Random();
        int myno2 = rnd2.Next(1, 10000);
        Session["ordernum"] = myno2;
        Session["amount"] = Label1.Text;
        Session["totalamount"] = Label2.Text;

 
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)GridView1.Rows[i].Cells[4].FindControl("TextBox1");
                    int quantity = Convert.ToInt32(box1.Text);
                    string checkout = "insert into [order](product_id,product_quantity,unitprice,order_number) values (@prod_id, @prod_quan, @up, @ordernum)";
                    SqlCommand com1 = new SqlCommand(checkout, conn);
                    com1.Parameters.AddWithValue("@prod_id", GridView1.Rows[i].Cells[0].Text);
                    com1.Parameters.AddWithValue("@prod_quan", quantity);
                    com1.Parameters.AddWithValue("@up", GridView1.Rows[i].Cells[3].Text);
                    com1.Parameters.AddWithValue("@ordernum", myno2);
                    com1.ExecuteNonQuery();
                }
            }
        }

        Response.Redirect("finalcheckout.aspx");
        //string finalcheckout = "insert into finalOrder (username,order_number,totalamount) values (@username, @ordernum, @total)";
        //SqlCommand com2 = new SqlCommand(finalcheckout, conn);
        //com2.Parameters.AddWithValue("@username", Session["USER"].ToString());
        //com2.Parameters.AddWithValue("@ordernum", myno2);
        //com2.Parameters.AddWithValue("@total", Convert.ToInt32(Label2.Text));
        ////com2.Parameters.AddWithValue("@status", 1);
        //com2.ExecuteNonQuery();

    }
}



