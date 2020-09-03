<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="finalcheckout.aspx.cs" Inherits="finalcheckout" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Checkout - Address</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>Checkout - Address</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

    <div id="content">
        <div class="container">

                <div class="row">

                    <div class="col-md-9 clearfix" id="checkout">

                        <div class="box">
                            

                                <ul class="nav nav-pills nav-justified">
                                    <li class="active"><a href="#"><i class="fa fa-map-marker"></i><br>Information</a>
                                    </li>
                                    <%--<li class="disabled"><a href="#"><i class="fa fa-truck"></i><br>Delivery Method</a>
                                    </li>
                                    <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment Method</a>
                                    </li>
                                    <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Order Review</a>
                                    </li>--%>
                                </ul>

                                <div class="content">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="firstname">Firstname</label>
                                                <asp:TextBox ID="TextBox1" runat="server" ClientID="firstname" CssClass="form-control"></asp:TextBox>
                                               
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                               
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="lastname">Lastname</label>
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ClientID="lastname"></asp:TextBox>
                                                
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row -->

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                               
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                               
                                            </div>
                                        </div>
                                      
                                    </div>
                                    <!-- /.row -->

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="cellnum">Cell Number</label>
                                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                                              
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                              
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="PaymentMode">Payment Mode</label>
                                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" >
                                                    <asp:ListItem Value="0">Cash On Delivery</asp:ListItem>
                                                    <asp:ListItem Value="1">Paypal</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                       </div>
                                     <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="email">Email Address</label>
                                                <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                                              
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                              
                                            </div>
                                        </div>
                                       
                                       </div>









                                    <!-- /.row -->
                                </div>

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="checkout.aspx" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                                    </div>
                                    <div class="pull-right">
                                        <asp:Button ID="Button1"  runat="server" CssClass="btn btn-template-main" Text="Place Order" OnClick="Button1_Click"/>
                                        
                                    </div>
                                </div>
                        </div>
                        <!-- /.box -->


                    </div>
                    <!-- /.col-md-9 -->

                    <div class="col-md-3">

                        <div class="box" id="order-summary">
                            <div class="box-header">
                                <h3>Order summary</h3>
                            </div>
                            <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td>Order subtotal</td>
                                            <th>
                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></th>
                                        </tr>
                                        <tr>
                                            <td>Shipping and handling</td>
                                            <th>150</th>
                                        </tr>
                                        <tr>
                                            <td>Tax</td>
                                            <th>0</th>
                                        </tr>
                                        <tr class="total">
                                            <td>Total</td>
                                            <th>
                                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                </div>
                <!-- /.row -->

            </div>




    </div>
</asp:Content>

