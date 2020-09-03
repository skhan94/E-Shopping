<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Add a Category 
                        </h1>
                    </div>
                </div>

    <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Product Category Details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                   
                                        <div class="form-group">
                                               
                                            <label>Category Name</label>
                                           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>                                            
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label>Category Description</label>

                                            <asp:TextBox ID="TextBox6" runat="server"  CssClass="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox> 
                                        
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please fill this field"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Not within range" ValidationExpression="^[\s\S]{5,500}$"></asp:RegularExpressionValidator>
                                        <br />
                                        <br />
                                           <asp:Button ID="Button2" runat="server" CssClass="btn btn-default"  OnClick="Button2_Click" Text="Add category" ></asp:Button>
                    
                                                           

                                   
                                       
                                       
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

