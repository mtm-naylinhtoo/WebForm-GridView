<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoGrid2.aspx.cs" Inherits="DemoApplication.DemoGrid2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnview1" runat="server" onclick="btnview1_Click" style="font-weight: 700" Text="View1" />
            <asp:Button ID="btnview2" runat="server" onclick="btnview2_Click" style="font-weight: 700" Text="View2" />
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server">

                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                            <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemodbConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" Text="Button1" OnCommand="Button1_Command" CommandArgument="Button 1 is clicked" CommandName="A" />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Button2" OnCommand="Button1_Command" CommandArgument="Button 2 is clicked" CommandName="B" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Test" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="chkred" runat="server" AutoPostBack="True"
                        OnCheckedChanged="chkred_CheckedChanged" Text="Red" />&nbsp;&nbsp;
                    <asp:CheckBox ID="chkgreen" runat="server" AutoPostBack="True"
                        OnCheckedChanged="chkgreen_CheckedChanged" Text="Green" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerId">
                    </asp:DropDownList>
                    &nbsp;<asp:Button ID="Button3" OnCommand="Button2_Command" runat="server" Text="Select" />
                    &nbsp;<br />
                    <asp:Label ID="Label4" runat="server" Text="Label4"></asp:Label>
                    <br />
                    <br />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
