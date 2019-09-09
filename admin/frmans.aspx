<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmans.aspx.cs" Inherits="admin_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="employeeId" class="topRatedEmployee employee">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="review-header text-center">
							<h1 class="blue">Answer Options</h1>
							<hr class="hrLinee"></hr>
							<p class="top-para">
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal> <p>
							
						        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
							
						</div>
					</div>
				</div>
				<div class="row review-box">
					

                    <table class="nav-justified">
                        <tr>
                            <td style="width: 172px">Asnwer Description</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="213px" TextMode="MultiLine" Width="590px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Answer" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 172px">Status</td>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 172px">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Cancel" CausesValidation="false" OnClick="Button2_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="anscod" DataSourceID="ObjectDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" Width="861px">
                                    <Columns>
                                        <asp:BoundField DataField="ansdsc" HeaderText="Answer Description" SortExpression="ansdsc">
                                        <ItemStyle Width="500px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="anssts" HeaderText="Status" SortExpression="anssts" />
                                        <asp:CommandField ShowEditButton="True" />
                                        <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dsp_rec" TypeName="nsskills.clsans">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="qstcod" QueryStringField="qcod" Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                        </tr>
                    </table>
					

                    </div>
                </section>
</asp:Content>

