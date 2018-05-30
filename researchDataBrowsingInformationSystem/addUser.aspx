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
                    <td style="width: 15%"></td>
                    <td style="width: 10%">用户ID：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td style="width: 10%">用户名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td style="width: 10%">密码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td style="width: 55%">
                        <br />

                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>