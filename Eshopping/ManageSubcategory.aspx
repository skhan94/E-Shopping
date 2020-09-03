<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageSubcategory.aspx.cs" Inherits="ManageSubcategory" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Manage Categories <small>Edit/Update/Delete Subcategories</small>
                        </h1>
                    </div>
                        </div>

    <div class="row">

			  <div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
				 
				</div>        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="Panel1" runat="server">
                    <ContentTemplate>
							<div class="panel-body" style="overflow:scroll;"> 

								<%--<div class="alert alert-success">
									<strong>Well done!</strong> You successfully read this important alert message.
								</div>
								
								<div class="alert alert-danger">
									<strong>Oh snap!</strong> Change a few things up and try submitting again.
								</div>--%>
                                
       <asp:GridView ID="GridView3" align="center" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="subcat_id" DataSourceID="SqlDataSource8" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="subcat_id" HeaderText="subcat_id" InsertVisible="False" ReadOnly="True" SortExpression="subcat_id" />
                <asp:BoundField DataField="subcat_name" HeaderText="subcat_name" SortExpression="subcat_name" />
                <asp:BoundField DataField="subcat_desc" HeaderText="subcat_desc" SortExpression="subcat_desc" />
                <asp:BoundField DataField="cat_name" HeaderText="cat_name" SortExpression="cat_name" />
                <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                           
                                             <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="false" CommandName="Delete" ImageUrl="~/buttons/delete.png" Text="Delete" />
                                       <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="false" CommandName="Edit" ImageUrl="~/buttons/edit.png" Text="Edit" />
                                              </ItemTemplate>
                                        <ControlStyle Height="20px" Width="20px" />
                                        <EditItemTemplate>
                                        <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="false" CommandName="Update" ImageUrl="~/buttons/update.png" Text="Update" />
                                      <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="false" CommandName="Cancel" ImageUrl="~/buttons/cancel.png" Text="Cancel" />
                                    </EditItemTemplate>
                                        <ControlStyle Height="20px" Width="20px" />
                                </asp:TemplateField>
            </Columns>
                               <EditRowStyle BackColor="#999999" />
   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" DeleteCommand="delete from subcategory where subcat_id=@subcat_id" SelectCommand="select subcategory.subcat_id, subcategory.subcat_name, subcategory.subcat_desc,category.cat_name
from subcategory
inner join category
on subcategory.category_id=category.category_id" UpdateCommand="update subcategory 
set subcategory.subcat_name=@subcat_name, subcategory.subcat_desc=@subcat_desc, subcategory.category_id=(select category.category_id from category where category.cat_name=@cat_name)
where subcategory.subcat_id=@subcat_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="subcat_id" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="subcat_name" Type="String" />
                                    <asp:Parameter Name="subcat_desc" Type="String" />
                                    <asp:Parameter Name="cat_name" Type="String"/>
                                    <asp:Parameter Name="subcat_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" DeleteCommand="delete from subcategory where subcat_id=@subcat_id" SelectCommand="select subcategory.subcat_id, subcategory.subcat_name, subcategory.subcat_desc,category.cat_name
from subcategory
inner join category
on subcategory.category_id=category.category_id" UpdateCommand="update subcategory 
set subcategory.subcat_name=@subcat_name, subcategory.subcat_desc=@subcat_desc, subcategory.category_id=(select category.category_id from category where category.cat_name=@cat_name)
where subcategory.subcat_id=@subcat_id">
            <DeleteParameters>
                <asp:Parameter Name="subcat_id" Type="Int32"/>
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="subcat_name" Type="String" />
                <asp:Parameter Name="subcat_desc" Type="String" />
                <asp:Parameter Name="cat_name" Type="String" />
                <asp:Parameter Name="subcat_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>                       
            

                            


							</div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
				</div>
			</div>						
				</div>
</asp:Content>



