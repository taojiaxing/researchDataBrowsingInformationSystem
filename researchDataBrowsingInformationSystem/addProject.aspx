<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProject.aspx.cs" Inherits="researchDataBrowsingInformationSystem.addProject" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; height: 100%">
                <tr>
                    <td style="width: 15%">请输入项目信息：</td>
                </tr>
                <tr>
                    <td style="width: 15%"></td>
                    <td style="width: 10%">项目ID：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td style="width: 10%">项目名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td style="width: 20%">项目负责人：<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField="ID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>" SelectCommand="select *from user"></asp:SqlDataSource>
                    </td>
                    <td style="width: 45%">
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click1" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>