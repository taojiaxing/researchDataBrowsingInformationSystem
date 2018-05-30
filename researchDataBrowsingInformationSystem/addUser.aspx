<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="researchDataBrowsingInformationSystem.addUser" %>

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
            <table style="width: 100%">
                <tr>
                    <td style="width: 10%; text-align: left; float: left"></td>
                    <td style="width: 10%">项目：<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField="ID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                            SelectCommand="SELECT   * FROM   project"></asp:SqlDataSource>
                    </td>
                    <td style="width: 10%">
                        <asp:Button ID="Button1" runat="server" Text="选择" OnClick="Button1_Click" /></td>
                    <td style="width: 70%"></td>
                </tr>
            </table>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="SqlDataSource1">
            </dx:ASPxGridView>
        </div>
    </form>
</body>
</html>