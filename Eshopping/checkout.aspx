<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 366px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

    <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Shopping cart</h1>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumb">
                            <li><a href="Default.aspx">Home</a>
                            </li>
                            <li>Shopping cart</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

    <div class="container">

                <div class="row">
                   
                       <div class="col-md-12 clearfix" id="basket">

                        <div class="box">
                           
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                         <asp:GridView ID="GridView1" runat="server" OnRowCreated="GridView1_RowCreated" Style="margin-left: 170px" Width="382px" OnRowDeleting="OnRowDeleting"  OnRowUpdated="Button1_Click" GridLines="None" ShowFooter="True">
                                                <Columns>
                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>

                                    <asp:TextBox ID="TextBox1" runat="server" type="number" Width="53px">1</asp:TextBox>
                                    &nbsp;<%--<asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>--%><br /><br />
                                </ItemTemplate>

                            </asp:TemplateField>
                                                    <asp:TemplateField ShowHeader="False">
                                                        <ItemTemplate>

                                                            <asp:ImageButton ID="IButton1" runat="server" src="buttons/delete.png" Width="20px" Height="20px" CausesValidation="false" CommandName="Delete" Text="Delete" />
                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                            </Columns>
                              </asp:GridView>
                    </ContentTemplate>
                    </asp:UpdatePanel>

                    </div>
                           </div>

                   <%-- <div class="col-md-9 clearfix" id="basket">

                        <div class="box">

                            <form method="post" action="shop-checkout1.html">

                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Product</th>
                                                <th>Quantity</th>
                                                <th>Unit price</th>
                                                <th>Discount</th>
                                                <th colspan="2">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <a href="#">
                                                        <img src="img/detailsquare.jpg" alt="White Blouse Armani">
                                                    </a>
                                                </td>
                                                <td><a href="#">White Blouse Armani</a>
                                                </td>
                                                <td>
                                                    <input type="number" value="2" class="form-control">
                                                </td>
                                                <td>$123.00</td>
                                                <td>$0.00</td>
                                                <td>$246.00</td>
                                                <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#">
                                                        <img src="img/basketsquare.jpg" alt="Black Blouse Armani">
                                                    </a>
                                                </td>
                                                <td><a href="#">Black Blouse Armani</a>
                                                </td>
                                                <td>
                                                    <input type="number" value="1" class="form-control">
                                                </td>
                                                <td>$200.00</td>
                                                <td>$0.00</td>
                                                <td>$200.00</td>
                                                <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">Total</th>
                                                <th colspan="2">$446.00</th>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </div>--%>
                                <!-- /.table-responsive -->
                    <div class="col-md-12">
                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="shopping_cart.aspx" class="btn btn-template-main"><i class="fa fa-chevron-left"></i> Continue shopping</a>
                                    </div>
                                    <div class="pull-right">
                                       <%-- <i class="fa fa-refresh"></i>--%>
                                        <asp:Button ID="Button1"  class="btn btn-template-main" runat="server" OnClick="Button1_Click" Text="Update" Width="73px" />
                       <%--                 <button type="submit" class="btn btn-template-main">Proceed to checkout <i class="fa fa-chevron-right" style="width: 4px"></i>--%>
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-template-main" Text="Proceed to checkout" OnClick="Button2_Click" />  
                                        
                                    </div>
                                </div>
                        </div>
                            
                    </div> <br /> <br />
                        
                        <!-- /.box -->

<%--                        <div class="row">
                            <div class="col-md-3">
                                <div class="box text-uppercase">
                                    <h3>You may also like these products</h3>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image" style="height: 152px;">
                                        <a href="shop-detail.html">
                                            <img src="img/product2.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat</a></h3>
                                        <p class="price">$143</p>

                                    </div>
                                </div>
                                <!-- /.product -->
                            </div>

                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image" style="height: 152px;">
                                        <a href="shop-detail.html">
                                            <img src="img/product3.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat</a></h3>
                                        <p class="price">$143</p>
                                    </div>
                                </div>
                                <!-- /.product -->
                            </div>

                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image" style="height: 152px;">
                                        <a href="shop-detail.html">
                                            <img src="img/product1.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat</a></h3>
                                        <p class="price">$143</p>
                                    </div>
                                </div>
                                <!-- /.product -->
                            </div>

                        </div>

                    </div>
                    <!-- /.col-md-9 -->--%>

                    <div class="col-md-12">
                        <div class="box" id="order-summary" class="">
                            <div class="box-header">
                                <h3>Order summary</h3>
                            </div>
                            <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td class="auto-style1">Order subtotal (in Rupees)</td>
                                            <th>
                                                <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">Shipping and handling (in Rupees)</td>
                                            <th>150</th>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">Tax (in Rupees)</td>
                                            <th>0</th>
                                        </tr>
                                        <tr class="total">
                                            <td class="auto-style1">Total (in Rupees)</td>
                                            <th>
                                                <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                                            </th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>


                       <%-- <div class="box">
                            <div class="box-header">
                                <h4>Coupon code</h4>
                            </div>
                            <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>
                            <form>
                                <div class="input-group">

                                    <input type="text" class="form-control">

                                    <span class="input-group-btn">

					    <button class="btn btn-template-main" type="button"><i class="fa fa-gift"></i></button>

					</span>
                                </div>--%>
                                <!-- /input-group -->
                           
                        </div>

                    </div>
    
                    <!-- /.col-md-3 -->

               
   
</asp:Content>

