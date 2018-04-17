<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="researchDataBrowsingInformationSystem.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>科研数据浏览信息系统</title>
    <style type="text/css">
        .auto-style1 {
            width: 55%;
        }

        #mainIfr {
            left: 30%;
        }

        #mainIfr {
            margin-top: 0px;
        }
    </style>
</head>
<body style="margin: 0px; height: 544px;">
    <div>
        <form id="form1" runat="server">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 61px">
                <tr>
                    <td style="vertical-align: middle; text-align: center; font-weight: bold; font-size: 25px; color: #003366; font-family: Arial;" class="auto-style1">科研数据浏览信息系统</td>
                    <td style="vertical-align: middle; text-align: left">
                        <asp:Panel ID="pnlLogin" runat="server" Height="30px" Width="100%">
                            用户名：<asp:TextBox ID="txbUserName" runat="server"></asp:TextBox>密码：
                        <!-- 对于密码TextBox，应把TextMode属性设置为Password，这样输入的值会以****形式出现，保护密码在输入时不被别人看到 -->
                            <asp:TextBox ID="txbUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" />
                        </asp:Panel>
                        <asp:Panel ID="pnlWelcome" runat="server" Height="30px" Width="100%">
                            <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                            <asp:Button ID="btnQuit" runat="server" CausesValidation="False" Text="退出" Width="146px" OnClick="btnQuit_Click" />
                            <asp:Button ID="btnReloinfo" runat="server" Text="权限管理" Width="146px" OnClick="Reloinfo_Click" />
                            <asp:Button ID="btnPatientInfo" runat="server" Text="资料管理" Width="146px" OnClick="PatientInfo_Click" />
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <!--表内容-->
    <div id="main">
        <iframe id="mainIfr" runat="server" name="mainIfr" width="100%" height="800" src=""></iframe><br />
    </div>
    <div id="Bottom" style="padding-right: 3em;">
		<span class="firstSpan">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;科研数据浏览信息系统欢迎您</span>
	</div>
</body>
</html>