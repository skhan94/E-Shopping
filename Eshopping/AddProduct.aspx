<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Add a Product 
                        </h1>
                    </div>
                </div>

    <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Product Details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                               
                                            <label>Product Name</label>
                                            <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                       
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                                                                       
                                        </div>

                                        <div class="form-group">
                                            <label>Product Price</label>
                                            <asp:TextBox ID="TextBox9" runat="server" class="form-control" Type="number" TextMode="Number"></asp:TextBox>
                                            
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                            
                                        </div>

                                         <div class="form-group">
                                            <label>Short Description</label>
                                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>
                                            
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Not within range" ValidationExpression="^[\s\S]{5,500}$"></asp:RegularExpressionValidator>
                                            
                                        </div>

                                         <div class="form-group">
                                            <label>Long Description</label>
                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" Rows="4" TextMode="MultiLine" ></asp:TextBox>
                                            
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Not within range" ValidationExpression="^[\s\S]{5,1000}$"></asp:RegularExpressionValidator>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Product Category</label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="cat_name" DataValueField="category_id" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" SelectCommand="SELECT [cat_name], [category_id] FROM [category]"></asp:SqlDataSource>
             
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Product Subcategory</label>
                                             <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="subcat_name" DataValueField="subcat_id" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" SelectCommand="SELECT [subcat_id], [subcat_name] FROM [subcategory]"></asp:SqlDataSource>
                                         </div>
                                         <div class="form-group">
                                            <label>Product Cover Image</label>
                                             <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control"/>

                                         </div>
                                        <div class="form-group">
                                            <label>Product Image</label>
                                            <asp:FileUpload ID="FileUpload2" runat="server"  CssClass="form-control"/> 

                                         </div>
                                        <asp:Button ID="Button4" runat="server" CssClass="btn btn-default" OnClick="Button1_Click" Text="Add Product" />
                             
                                        
                                       
                                       
                                        <%--<asp:Button type="submit" class="btn btn-default">Submit Button</asp:Button>--%>
                                       <%-- <button type="reset" class="btn btn-default">Reset Button</button>--%>
                                    </form>
                                
                                        <asp:Label ID="Label1" runat="server" CssClass="success"></asp:Label>
                                
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                     
                                    
                              
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                
                <!-- /.col-lg-12 -->
            

</asp:Content>

