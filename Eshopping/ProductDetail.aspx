<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
                <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1> <asp:Label ID="Label7" runat="server" Text=""></asp:Label> </h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="Default.aspx">Home</a>
                            </li>
                            <li><a href="shopping-cart.aspx">Products</a>
                            </li>
                           
                            <li>Product Detail</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
               <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                      <p class="text-muted lead text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="0" ForeColor="#38A7C8"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" class="btn btn-template-main" runat="server" OnClick="Button3_Click" Text="Checkout" Width="125px" />
                   &nbsp; &nbsp; <asp:Label ID="Label4" runat="server"></asp:Label>
                </p>
               </div>
                    </div>
                
                
                     <%-- <div class="row" id="productMain">
                          <div class="col-md-9">--%>

                     <%--   <p class="lead">Built purse maids cease her ham new seven among and. Pulled coming wooded tended it answer remain me be. So landlord by we unlocked sensible it. Fat cannot use denied excuse son law. Wisdom happen suffer common the appear ham beauty
                            her had. Or belonging zealously existence as by resources.
                        </p>
                        <p class="goToDescription"><a href="#details" class="scroll-to text-uppercase">Scroll to product details, material &amp; care and sizing</a>
                        </p>--%>
                    
                        <div class="row" id="productMain">
                            <div class="col-md-5">
                                <div id="mainImage">
                                    <asp:Image ID="CoverImage1" runat="server" class="img-responsive" OnDataBinding="Page_Load"/>
                                    
                                </div>

                            <%--    <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>--%>
                                <!-- /.ribbon -->

                            </div>
                            <div class="col-md-4">
                        <div class="box">
<div class="sizes">

                                            <h3>Available sizes</h3>

                                            <label for="size_s">
                                                <a href="#">S</a>
                                                <input type="radio" id="size_s" name="size" value="s" class="size-input">
                                            </label>
                                            <label for="size_m">
                                                <a href="#">M</a>
                                                <input type="radio" id="size_m" name="size" value="m" class="size-input">
                                            </label>
                                            <label for="size_l">
                                                <a href="#">L</a>
                                                <input type="radio" id="size_l" name="size" value="l" class="size-input">
                                            </label>

                                        </div>
                            <p class="price"> <asp:Label ID="Label1" runat="server" Text="">     </asp:Label>   </p>

                                        <p class="text-center">
                                          <%--  <button type="submit" ><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                            //<button type="submit" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to wishlist"><i class="fa fa-heart-o"></i>
                                            </button>--%>
                                            <asp:Button ID= "Button1" runat="server" CssClass="btn btn-template-main" Text="Add To Cart" OnClick="Button1_Click" />
                                        </p>

                                    
                                </div>

                                <div class="row" id="thumbs">
                                    <div class="col-xs-4">
                                        <asp:ImageButton ID="IButton1" runat="server" CssClass="img-responsive" OnClick="IButton1_Click" OnDataBinding="Page_Load">
                                            <%--<img src="img/detailsquare.jpg" alt="" class="img-responsive">--%>
                                        
                                        </asp:ImageButton>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:ImageButton ID="IButton2" runat="server" CssClass="img-responsive" OnClick="IButton2_Click" OnDataBinding="Page_Load">
                                            <%--<img src="img/detailsquare.jpg" alt="" class="img-responsive">--%>
                                        
                                        </asp:ImageButton>
                                    </div>
                                   <%-- <div class="col-xs-4">
                                        <a href="img/detailbig3.jpg" class="thumb">
                                            <img src="img/detailsquare3.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>--%>
                                </div>
                            </div>

                        </div>


                        <div class="box" id="details">
                           <h4>Product details</h4>
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                
                            <br />
                            <br />
                            <h4>Product Category</h4>
                            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                        </div>

                      
                    

                        </div>

                    </div>
               
</asp:Content>

