<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="researchDataBrowsingInformationSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>科研数据浏览信息系统</title>
    <style type="text/css">
        .auto-style1 {
            width: 55%;
        }
        }
        #main {
            height: 662px;

        }
    </style>
</head>
<body style="margin: 0px; height: 544px;">
    <div id="main">
        <p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: 25px; color: #003366; font-family: Arial;" class="auto-style1">科研数据浏览信息系统</p>
        <form id="form1" runat="server">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 293px; height: 140px; margin-left:40%; margin-top:15%">
                <tr>
                    <td>用户名：<asp:TextBox ID="txbUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>密码：&nbsp; <asp:TextBox ID="txbUserPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
              <br />             
         </form>
    </div>
</body>
</html>