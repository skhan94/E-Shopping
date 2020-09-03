<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="success.aspx.cs" Inherits="success" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>ORDER STATUS</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="Default.aspx">Home</a>
                            </li>
                            <li>Order Status</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
    <div id="row" style="padding-top:50px; padding-bottom:50px; text-align:center;">
            <asp:Label ID="Label1" runat="server" style="text-align:center;" Text="Your order has been successfully placed!" Font-Bold="True" Font-Size="Large"></asp:Label>

            </div>

     

</asp:Content>

