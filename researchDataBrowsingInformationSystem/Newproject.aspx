<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newproject.aspx.cs" Inherits="researchDataBrowsingInformationSystem.Newproject" %>

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
                    <td>项目ID：<asp:TextBox ID="proID" runat="server"></asp:TextBox></td>
                    <td style="width: 10%"></td>
                    <td>项目名：<asp:TextBox ID="proName" runat="server"></asp:TextBox></td>
                    <td style="width: 10%"></td>
                    <td>负责人：<%:Session["UserName"].ToString()%></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>