<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmtec.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="employeeId" class="topRatedEmployee employee">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="review-header text-center">
							<h1 class="blue">Technologies</h1>
							<hr class="hrLinee"></hr>
							<p class="top-para">Add Technologies for skill testing <p>
							
						</div>
					</div>
				</div>
				<div class="row review-box">
					


				    <table class="nav-justified">
                        <tr>
                            <td style="width: 185px; height: 30px">Technology</td>
                            <td style="height: 30px">
                                <asp:TextBox ID="txttec" runat="server" Width="357px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttec" ErrorMessage="Enter Technology"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel"  CausesValidation="false"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="teccod" DataSourceID="ObjectDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" Width="769px">
                                    <Columns>
                                        <asp:BoundField DataField="tecnam" HeaderText="Technology" SortExpression="tecnam" />
                                        <asp:CommandField ShowEditButton="True" />
                                        <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dsp_rec" TypeName="nsskills.clstec"></asp:ObjectDataSource>
                            </td>
                        </tr>
                    </table>
					


				</div>
			
			</div>
		</section>

</asp:Content>

