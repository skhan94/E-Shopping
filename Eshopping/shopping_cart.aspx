<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="shopping_cart.aspx.cs" Inherits="shopping_cart" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 151px;
        }
    .auto-style2 {
        width: 151px;
        height: 21px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Category full</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="Default.aspx">Home</a>
                            </li>
                            <li>Product</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

    <div id="content">
            <div class="container">
             
                <p class="text-muted lead text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="0" ForeColor="#38A7C8"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" class="btn btn-template-main" runat="server" OnClick="Button3_Click" Text="Checkout" Width="125px" />
                   &nbsp; &nbsp; <asp:Label ID="Label3" runat="server"></asp:Label>
                </p>
               

                <div class="row products" >

                 <%--   <div class="col-md-3 col-sm-4">--%>
                        <div class="product">
                          <%--  <div class="image" style="height: 150px;">--%>


                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="prod_id" Width="100%" BorderColor="#36A2D1" >
            <ItemTemplate>
                <table class="col-md-4"  style="margin-bottom:20px;">
                    <tr>
                        <td class="auto-style1">
                          <asp:Label ID="prod_nameLabel" runat="server" Text='<%# Eval("prod_name") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#38A7C8" />
                <br />
                            </td>
                        </tr>
                       <tr>
                        <td CssClass="image">
                            &nbsp;
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# String.Format("~/images/{0}", Eval("image1"))%>' width="100px" Height="100px"/>
                <br />
                            </td>
                        </tr>
                     <tr>
                        <td class="auto-style2">
                            ID:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("prod_id") %>' ForeColor="#38A7C8" />
                <br />
                            </td>
                        </tr>



                   <%-- <tr>
                        <td class="auto-style3">
                            Type:
                <asp:Label ID="prod_typeLabel" runat="server" Text='<%# Eval("prod_type") %>' ForeColor="#36A1B4" />
                <br />
                            <br />
                            </td>
                        </tr>--%>
                    <tr>
                        <td class="auto-style1">
                            Price:&nbsp;&nbsp;
                <asp:Label ID="prod_priceLabel" runat="server" Text='<%# Eval("prod_price") %>' ForeColor="#38A7DB" />
                <br />
                            <br />
                            </td>
                        </tr>
                   </tr>
                 <tr>
                        <td>
                          
                            <asp:Button ID="Button2" runat="server" class="btn btn-template-main" OnClick="Button2_Click2" Text="Product Detail" Width="201px" CommandName="AddToCart" CommandArgument='<%# Bind("prod_id") %>'/>
                         <%-- <i class="fa fa-shopping-cart"></i>--%>
                            </td>
                        </tr>
                 
                    </table>
                  <br />
                            <br />
            </ItemTemplate>
                                  
         
            <SeparatorTemplate>
        <hr />
    </SeparatorTemplate>
         
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" SelectCommand="select product.prod_id,product.prod_name, product.prod_price, image.image1
from product
left join image
on product.image_id=image.image_id
"></asp:SqlDataSource>
                    </div>
                    </div>
                        
                    
                                <br />
                <br />
                <br />
                <br />



              <%--  <div class="row products">

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product1.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">Fur coat with very but very very long name</a></h3>
                                <p class="price">$143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product2.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">White Blouse Armani</a></h3>
                                <p class="price"><del>$280</del> $143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>
                            </div>
                            <!-- /.text -->

                            <div class="ribbon sale">
                                <div class="theribbon">SALE</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product3.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">Black Blouse Versace</a></h3>
                                <p class="price">$143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>

                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product4.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">Black Blouse Versace</a></h3>
                                <p class="price">$143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>

                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product3.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">White Blouse Armani</a></h3>
                                <p class="price"><del>$280</del> $143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>
                            </div>
                            <!-- /.text -->

                            <div class="ribbon sale">
                                <div class="theribbon">SALE</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product4.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">White Blouse Versace</a></h3>
                                <p class="price">$143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>

                            </div>
                            <!-- /.text -->

                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product2.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">White Blouse Versace</a></h3>
                                <p class="price">$143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>

                            </div>
                            <!-- /.text -->

                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-4">
                        <div class="product">
                            <div class="image" style="height: 213px;">
                                <a href="shop-detail.html">
                                    <img src="img/product1.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <!-- /.image -->
                            <div class="text">
                                <h3><a href="shop-detail.html">Fur coat</a></h3>
                                <p class="price">$143.00</p>
                                <p class="buttons">
                                    <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                    <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>--%>

                         

                <%--<div class="col-sm-12">

                    <div class="banner">
                        <a href="#">
                            &nbsp;</a></div>

                    <div class="pages">

                        <p class="loadMore">
                            <a href="#" class="btn btn-template-main"><i class="fa fa-chevron-down"></i> Load more</a>
                        </p>

                        <ul class="pagination">
                            <li><a href="#">«</a>
                            </li>
                            <li class="active"><a href="#">1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                            <li><a href="#">4</a>
                            </li>
                            <li><a href="#">5</a>
                            </li>
                            <li><a href="#">»</a>
                            </li>
                        </ul>
                    </div>

                </div>--%>
                <!-- /.col-sm-12 -->

              <%--  <div class="pages">

                        <p class="loadMore">
                            <a href="#" class="btn btn-template-main"><i class="fa fa-chevron-down"></i> Load more</a>
                        </p>

                        <ul class="pagination">
                            <li><a href="#">«</a>
                            </li>
                            <li class="active"><a href="#">1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                            <li><a href="#">4</a>
                            </li>
                            <li><a href="#">5</a>
                            </li>
                            <li><a href="#">»</a>
                            </li>
                        </ul>
                    </div>--%>

            </div>
            <!-- /.container -->
        </div>
    
</asp:Content>

