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

        .auto-style2 {
            width: 69px;
            height: 76px;
        }
    </style>
</head>
<body style="margin: 0px; height: 822px;">
    <div id="main" style="background-color: #093F61; color: #FFFFFF; height: 900px">
        <form id="form1" runat="server">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 96px; background-color: #0A3F61;">
                <tr>
                    <td style="width: 12%; text-align: center">

                        <img alt="" class="auto-style2" src="img/untitled.bmp" /></td>
                    <td style="font-weight: bold; font-size: 26px; color: #FFFFFF; font-family: 'Bell MT';" class="auto-style1">科研数据浏览信息系统——华西核磁共振研究中心HMRRC<br />
                    </td>
                    <td style="vertical-align: middle; text-align: left"></td>
                </tr>
                <tr style="height: 6px; background-color: #000000">
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>

            <table border="0" cellpadding="0" cellspacing="0" style="width: 293px; height: 140px; margin-left: 40%; margin-top: 15%; border: 4px solid #808080">

                <tr>
                    <td style="width: 60px">用户名:</td>
                    <td>
                        <asp:TextBox ID="txbUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 60px">密码:</td>
                    <td>
                        <asp:TextBox ID="txbUserPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 60px"></td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
            <br />
        </form>
    </div>
    <div id="Bottom" style="background-color: #0A3F61; color: #FFFFFF; font-size: small; margin-bottom: 2px; position: absolute; width: 100%">
        <span class="firstSpan">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp; 201<span>8华西医院磁共振临床研究中心 版权所有.</span></span>
    </div>
</body>
</html>