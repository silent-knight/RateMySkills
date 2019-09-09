<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmqstbnk.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="employeeId" class="topRatedEmployee employee">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="review-header text-center">
							<h1 class="blue">Question Bank</h1>
							<hr class="hrLinee"></hr>
							<p class="top-para">View questions of different technologies <p>
							
						</div>
					</div>
				</div>
				<div class="row review-box">

                    <table class="nav-justified">
                        <tr>
                            <td style="width: 256px">Select Technology</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tecnam" DataValueField="teccod">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" Width="1051px" DataKeyNames="qstcod" Height="151px" OnRowDeleting="GridView1_RowDeleting">
                                    <Columns>
                                        <asp:BoundField DataField="qstdat" DataFormatString="{0:d}" HeaderText="Posted Date" SortExpression="qstdat" />
                                        <asp:BoundField DataField="qstdsc" HeaderText="Question Description" SortExpression="qstdsc">
                                        <ItemStyle Width="600px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="qstlvl" HeaderText="Level" SortExpression="qstlvl" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                     <a href="frmqst.aspx?qcod=<%#Eval("qstcod") %>">Edit</a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lk1" runat ="server" CommandName="Delete" Text="Delete" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="frmans.aspx?qcod=<%#Eval("qstcod") %>">Answer Options</a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dsp_rec" TypeName="nsskills.clstec"></asp:ObjectDataSource>
                                <br />
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="dsp_rec" TypeName="nsskills.clsqst">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="teccod" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                        </tr>
                    </table>

                    </div>
                </section>
</asp:Content>

