<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewProject.aspx.cs" Inherits="researchDataBrowsingInformationSystem.viewProject" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td style="width:20%"></td>
                    <td>项目：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataValueField="ID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>" SelectCommand="SELECT   * FROM   project"></asp:SqlDataSource>
                    </td>
                    <td style="width:20%"></td>
                    <td>查询方式：<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="date">日期</asp:ListItem>
                        <asp:ListItem Value="describe">描述</asp:ListItem>
                        <asp:ListItem Value="ID">编号</asp:ListItem>
                        <asp:ListItem Value="OperatorsName">操作员</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
