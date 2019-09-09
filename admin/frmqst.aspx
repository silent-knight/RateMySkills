<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmqst.aspx.cs" Inherits="admin_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="employeeId" class="topRatedEmployee employee">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="review-header text-center">
							<h1 class="blue">Question Details</h1>
							<hr class="hrLinee"></hr>
							<p class="top-para">Manage questions for skill testing <p>
							
						    <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
							
						</div>
					</div>
				</div>
				<div class="row review-box">




                    <table class="nav-justified">
                        <tr>
                            <td style="width: 177px">Select Technology</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="tecnam" DataValueField="teccod">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 177px">Select Level</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Value="B">Beginner</asp:ListItem>
                                    <asp:ListItem Value="I">Intermediate</asp:ListItem>
                                    <asp:ListItem Value="E">Expert</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 177px">Question Description</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="167px" TextMode="MultiLine" Width="618px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter question description" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 177px">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Cancel"  CausesValidation="false" OnClick="Button2_Click" style="height: 26px"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 177px">&nbsp;</td>
                            <td>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dsp_rec" TypeName="nsskills.clstec"></asp:ObjectDataSource>
                            </td>
                        </tr>
                    </table>




                </div>
                </section>
</asp:Content>

