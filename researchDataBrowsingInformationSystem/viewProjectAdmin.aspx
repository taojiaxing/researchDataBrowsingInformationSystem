<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewProjectAdmin.aspx.cs" Inherits="researchDataBrowsingInformationSystem.viewProjectAdmin" %>

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
            <table>
                <tr>
                    <td style="width: 10%"></td>
                    <td style="width: 20%">项目：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 6%"></td>

                    <td style="width: 64%">
                        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <iframe id="mainIfr" runat="server" name="mainIfr" frameborder="no" style="padding: 0px; margin: 0px; float: initial" width="100%" height="600px" src=""></iframe>
        </div>
    </form>
</body>
</html>