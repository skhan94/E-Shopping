<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageProduct.aspx.cs" Inherits="AddProduct" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Manage Products <small>Edit/Update/Delete Product</small>
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

                                <asp:GridView ID="GridView1" align="center"  runat="server" CssClass="table table-striped table-bordered table-hover" style="padding-left:50px; overflow:scroll" AutoGenerateColumns="False" DataKeyNames="prod_id" DataSourceID="SqlDataSource4" CellPadding="4"  GridLines="None" >
                          <%-- <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />--%>
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                
                                
                                <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />--%>
                                
                                
                                <asp:BoundField DataField="prod_id" HeaderText="Product ID" ReadOnly="True" SortExpression="prod_id" InsertVisible="False" />
                                <asp:BoundField DataField="prod_name" HeaderText="Product Name" SortExpression="prod_name" />
                                <asp:BoundField DataField="prod_price" HeaderText="Product Price" SortExpression="prod_price" />
                                <asp:BoundField DataField="shortdescription" HeaderText="Short Description" SortExpression="shortdescription" />
                                <asp:BoundField DataField="longdescription" HeaderText="Long Description" SortExpression="longdescription" />
                             
                                 <asp:BoundField DataField="cat_name" HeaderText="Category" SortExpression="cat_name" />
                                 
                                       
                                    
                               
                                <asp:BoundField DataField="subcat_name" HeaderText="Subcategory" SortExpression="subcat_name" />
                                <asp:TemplateField HeaderText="Image" SortExpression="image1">
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="FileUpload2" runat="server" Text='<%# String.Format("~/images/{0}", Eval("image1"))%>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl='<%# String.Format("~/images/{0}", Eval("image1"))%>' Width="87px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                           
                                             <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="false" CommandName="Delete" ImageUrl="~/buttons/delete.png" Text="Delete" />
                                       <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="false" CommandName="Edit" ImageUrl="~/buttons/edit.png" Text="Edit" />
                                              </ItemTemplate>
                                        <ControlStyle Height="20px" Width="20px" />
                                        <EditItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="false" CommandName="Update" ImageUrl="~/buttons/update.png" Text="Update" />
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

                              <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CM_Connection1 %>" DeleteCommand="spproddelete1" DeleteCommandType="StoredProcedure" SelectCommand="spproduct" SelectCommandType="StoredProcedure" UpdateCommand="spproductupdate2" UpdateCommandType="StoredProcedure">
                                  <DeleteParameters>
                                      <asp:Parameter Name="prod_id" Type="Int32" />
                                  </DeleteParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="prod_id" Type="Int32" />
                                      <asp:Parameter Name="prod_name" Type="String" />
                                      <asp:Parameter Name="prod_price" Type="Int32" />
                                      <asp:Parameter Name="longdescription" Type="String" />
                                      <asp:Parameter Name="shortdescription" Type="String" />
                                      <asp:Parameter Name="cat_name" Type="String" />
                                      <asp:Parameter Name="subcat_name" Type="String" />
                                      <asp:Parameter Name="image1" Type="String" />
                                  </UpdateParameters>
                            </asp:SqlDataSource>

                      
                                                 
                        

                            <br />

                            


							</div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
				</div>
			</div>						
				</div>
</asp:Content>

