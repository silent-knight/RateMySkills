<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmres.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="180px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="948px" DataKeyNames="crtopt,yoropt" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="qstdsc" HeaderText="Question" />
            <asp:BoundField DataField="crtopt" HeaderText="Correct Option" />
            <asp:BoundField DataField="yoropt" HeaderText="Your Option" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="31px" Width="74px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

