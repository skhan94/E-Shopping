<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserDefault.aspx.cs" Inherits="UserDefault" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section>
            <!-- *** HOMEPAGE CAROUSEL ***
 _________________________________________________________ -->

            <div class="home-carousel" style="height:500px;">

                <div class="dark-mask"></div>

                <div class="container">
                    <div class="homepage owl-carousel" style="height:500px;">
                        <div class="item">
                            <div class="row">
                                <div class="col-sm-12 right">
                                    <p style="text-align:center;">
                                        <img src="img/logo.png" alt="">
                                    </p>
                                    <h1 style="text-align:center;">XYZ COMPANY</h1>
                                    <p style="text-align:center;">ECOMMERCE SITE</p>
                                    <p style="text-align:center;">ADMIN PANEL WITH DASHBOARD</p>
                                     <br />
                                        <br />
                                    <br />
                                    <br />
                                       <br />
                                  
                                </div>
                              <%--  <div class="col-sm-7">
                                    <img class="img-responsive" src="img/template-homepage.png" alt="">
                                </div>--%>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">

                              <%--  <div class="col-sm-7 text-center">
                                    <img class="img-responsive" src="img/template-mac.png" alt="">
                                </div>--%>

                                <div class="col-sm-12">
                                      <p style="text-align:center;">
                                        <img src="img/logo.png" alt="">
                                    </p>
                                   <h2 style="text-align:center;">All Kinds of Products</h2>
                                    <ul class="list-style-none" style="text-align:center;">
                                        <li>Men.Women.Kids.</li>
                                        <li>Electronics.Accessories.</li>
                                       <%-- <li>Google maps, Forms, Megamenu, CSS3 Animations and much more</li>
                                        <li>+ 11 extra pages showing template features</li>--%>
                                    </ul>
                                     <br />
                                        <br />
                                    <br />
                                    <br />
                                       <br />
                                   
                                </div>

                            </div>
                        </div>
                       <%-- <div class="item">
                            <div class="row">
                                <div class="col-sm-12 right">
                                    <h1>Design</h1>
                                    <ul class="list-style-none">
                                        <li>Clean and elegant design</li>
                                        <li>Full width and boxed mode</li>
                                        <li>Easily readable Roboto font and awesome icons</li>
                                        <li>7 preprepared colour variations</li>
                                    </ul>
                                </div>
                                <div class="col-sm-7">
                                    <img class="img-responsive" src="img/template-easy-customize.png" alt="">
                                </div>
                            </div>
                        </div>--%>
                        <div class="item">
                            <div class="row">
                               <%-- <div class="col-sm-12">
                                    <img class="img-responsive" src="img/template-easy-code.png" alt="">
                                </div>--%>

                                <div class="col-sm-12" style="text-align:center;">
                                      <p style="text-align:center;">
                                        <img src="img/logo.png" alt="">
                                    </p>
                                    <h1>Easy to Add Products..</h1>
                                    <ul class="list-style-none">
                                        <li>Easy To Buy.</li>
                                        <li>Easy To Customize.</li>
                                        <br />
                                        <br />
                                        <br />
                                           <br />
                                    <br />
                                  
                                    </ul>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                    <!-- /.project owl-slider -->
                </div>
            </div>

            <!-- *** HOMEPAGE CAROUSEL END *** -->
        </section>

     <section class="bar background-white">
            <div class="container">
                     <div class="row products" >

                 <%--   <div class="col-md-3 col-sm-4">--%>
                        <div class="product">
                          <%--  <div class="image" style="height: 150px;">--%>


                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="prod_id" Width="100%" BorderColor="#36A2D1">
            <ItemTemplate>
                <table class="col-md-4"  style="margin-bottom:20px;" border="0">
                    <tr>
                        <td class="auto-style1">
                          <asp:Label ID="prod_nameLabel" runat="server" Text='<%# Eval("prod_name") %>' Font-Bold="True" Font-Size="Large" ForeColor="#38A7C8" />
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
                          
                            <asp:Button ID="Button2" runat="server" class="btn btn-template-main" OnClick="Button2_Click2" Text="Go To Product Page" Width="201px" CommandName="AddToCart" CommandArgument='<%# Bind("prod_id") %>'/>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" SelectCommand="select top 3 product.prod_id,product.prod_name, product.prod_price, image.image1
from product
left join image
on product.image_id=image.image_id
"></asp:SqlDataSource>
                    </div>
                         </div>
                </div>
                   

                </section>


      <section class="bar background-pentagon no-mb">
            <div class="container">
                <div class="row showcase">
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon"><i class="fa fa-align-justify"></i>
                            </div>
                            <h4><span class="counter">580</span><br>

		Users</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon"><i class="fa fa-users"></i>
                            </div>
                            <h4><span class="counter">100</span><br>

		Satisfied Customers</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon"><i class="fa fa-copy"></i>
                            </div>
                            <h4><span class="counter">50</span><br>

		Products</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon"><i class="fa fa-font"></i>
                            </div>
                            <h4><span class="counter">25</span><br> 

		Categories</h4>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>

</asp:Content>



