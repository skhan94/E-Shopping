<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Dashboard 
                        </h1>
                    </div>
                </div>

    <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-green">
                            <div class="panel-body">
                                <i class="fa fa-bar-chart-o fa-5x"></i>
                            <h3>   <asp:Label ID="Label1" runat="server" Text="0">  
                               </asp:Label></h3>
                            </div>
                            <div class="panel-footer back-footer-green">
                                Daily Visits

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <i class="fa fa-shopping-cart fa-5x"></i>
                               <h3> <asp:Label ID="Label2" runat="server" Text="0">  </asp:Label> </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                Orders

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-red">
                            <div class="panel-body">
                                <i class="fa fa fa-comments fa-5x"></i>
                                <h3>
                                    <asp:Label ID="Label3" runat="server" Text="0"></asp:Label> </h3>
                            </div>
                            <div class="panel-footer back-footer-red">
                                Products

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-brown">
                            <div class="panel-body">
                                <i class="fa fa-users fa-5x"></i>
                                <h3>
                                    <asp:Label ID="Label4" runat="server" Text="0"></asp:Label> </h3>
                            </div>
                            <div class="panel-footer back-footer-brown">
                                No. of users

                            </div>
                        </div>
                    </div>
                </div>


   


    <div class="row">
                    
        <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Tasks Panel
                            </div>
                            <div class="panel-body">
                                <div class="list-group">

                                    <a href="#" class="list-group-item">
                                        <span class="badge">7 minutes ago</span>
                                        <i class="fa fa-fw fa-comment"></i> Commented on a post
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">16 minutes ago</span>
                                        <i class="fa fa-fw fa-truck"></i> Order 392 shipped
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">36 minutes ago</span>
                                        <i class="fa fa-fw fa-globe"></i> Invoice 653 has paid
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">1 hour ago</span>
                                        <i class="fa fa-fw fa-user"></i> A new user has been added
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">1.23 hour ago</span>
                                        <i class="fa fa-fw fa-user"></i> A new user has added
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">yesterday</span>
                                        <i class="fa fa-fw fa-globe"></i> Saved the world
                                    </a>
                                </div>
                                <div class="text-right">
                                    <a href="#">More Tasks <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-8 col-sm-12 col-xs-12">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                               Categories
                            </div> 
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <asp:Panel ID="Panel1" runat="server">
                                   
                                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource1" AllowPaging="True">

                                            <Columns>
                                                <asp:BoundField DataField="category_id" HeaderText="Category ID" InsertVisible="False" ReadOnly="True" SortExpression="category_id" />
                                                <asp:BoundField DataField="cat_name" HeaderText="Category Name" SortExpression="cat_name" />
                                                <asp:BoundField DataField="cat_desc" HeaderText="Description" SortExpression="cat_desc" />
                                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                                            </Columns>

                                        </asp:GridView>
                                    
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                                    
                                        </asp:Panel>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
    
      
</asp:Content>

