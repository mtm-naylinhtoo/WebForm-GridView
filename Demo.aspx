<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="DemoApplication.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <TWebControl:TestName ID="Header" runat="server" MinValue="100"/>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="TutorialID"></asp:Label>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="DemoDataSource" DataTextField="TutorialID" DataValueField="TutorialID"></asp:ListBox>
            <asp:SqlDataSource ID="DemoDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DemodbConnectionString %>" SelectCommand="SELECT * FROM [demotb]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2" runat="server" Text="TuturialName"></asp:Label>
            <asp:ListBox ID="ListBox2" runat="server" DataSourceID="DemoDataSource" DataTextField="TutorialName" DataValueField="TutorialName"></asp:ListBox>
        </div>
    </form>
</body>
</html>
