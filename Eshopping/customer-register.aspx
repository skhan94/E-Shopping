<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="customer-register.aspx.cs" Inherits="customer_register" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>New account / Sign in</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>New account / Sign in</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

    <div id="content">
            <div class="container">

                <div class="row">
                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">New account</h2>

                            <p class="lead">Not our registered customer yet?</p>
                            <%--<p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                            <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>--%>

                            <hr>

                        <%--    <form action="shopping_cart.aspx" method="post">--%>
                                <div class="form-group">
                                    <asp:Label ID="name" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="TextBoxUsername" class="form-control" ClientID="name-login" runat="server" ValidationGroup="Register"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Please Enter a Username" ValidationGroup="Register"></asp:RequiredFieldValidator>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Please enter username"></asp:RequiredFieldValidator>--%>
                                                 
                                  </div>
                                <div class="form-group">
                                   <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                                <asp:TextBox ID="TextBoxemail" runat="server" class="form-control" ClientID="email-login" ValidationGroup="Register"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Please enter an email address" ValidationGroup="Register"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Invalid Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Register"></asp:RegularExpressionValidator>
                  <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="You must enter a valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                                  </div>

                                <div class="form-group">
                                    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                                      <asp:TextBox ID="TextBoxpassword" runat="server" TextMode="Password" class="form-control" ClientID="password-login" ValidationGroup="Register"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxpassword" ErrorMessage="Please enter a password" ValidationGroup="Register"></asp:RequiredFieldValidator>
                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxpassword" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>--%>
                                    
                                </div>
                                <div class="text-center">
                                      <asp:Button ID="Button1" runat="server" text="Register" OnClick="Button1_Click"  class="btn btn-template-main" ValidationGroup="Register"/><%--<i class="fa fa-user-md"></i>--%>
                                 &nbsp; &nbsp;     <asp:Label ID="Label4" runat="server"></asp:Label>
                                   </div>
                           <%-- </form>--%>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">Login</h2>

                            <p class="lead">Already our customer?</p>
                         <%--   <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>--%>

                           

                   
                                <div class="form-group">
                                     <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                       <asp:TextBox ID="TextBoxuname" runat="server"  class="form-control" ClientID="email" ValidationGroup="Login"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxuname" ErrorMessage="Please enter a username" ValidationGroup="Login"></asp:RequiredFieldValidator>
                                  </div>
                                <div class="form-group">
                                  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="TextBoxPass"  class="form-control" ClientID="password" runat="server" TextMode="Password" ValidationGroup="Login"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter a password" ValidationGroup="Login"></asp:RequiredFieldValidator>
                                </div>
                                <div class="text-center">
                                     <asp:Button ID="Button_Login" runat="server" class="btn btn-template-main" OnClick="ButtonLogin_Click" Text="Login" ValidationGroup="Login"/>
                                  &nbsp; &nbsp;   <asp:Label ID="Label3" runat="server"></asp:Label>
                                </div>
                           
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
</asp:Content>

