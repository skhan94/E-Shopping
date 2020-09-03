<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Add a Subategory 
                        </h1>
                    </div>
                </div>

    <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          Subcategory Details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                   
                                        <br />
                                        <br />
                                        <div class="form-group">
                                               
                                            <label>Subcategory Name</label>
                                           <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>                                            
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label>Subcategory Description</label>

                                            <asp:TextBox ID="TextBox8" runat="server"  CssClass="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox> 
                                        
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="Not within range" ValidationExpression="^[\s\S]{5,500}$"></asp:RegularExpressionValidator>
                                        
                                        </div>
                                    <div class="form-group">
                                            <label>Subcategory Description</label>
<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="cat_name" DataValueField="category_id" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" SelectCommand="SELECT [category_id], [cat_name] FROM [category]"></asp:SqlDataSource>
               
                                             
                                        </div>
                                 
                                    <br />
                                        <br />
                                           <asp:Button ID="Button2" runat="server" CssClass="btn btn-default"  OnClick="Button2_Click" Text="Add category" ></asp:Button>
                    
                                                           
     </form>
                                
                                        <asp:Label ID="Label1" runat="server" CssClass="success"></asp:Label>
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                
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

