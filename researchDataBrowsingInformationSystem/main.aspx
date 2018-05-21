<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="researchDataBrowsingInformationSystem.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>科研数据浏览信息系统</title>
    <script type="text/javascript">
        function show() {
            var showdo = document.getElementById(arguments[0]);
            if (showdo.style.display == "block") {
                showdo.style.display = "none";
            }
            else {
                var first_one = document.getElementById("First_one");
                var second_one = document.getElementById("Second_one");
                var third_one = document.getElementById("Third_one");
                first_one.style.display = "none";;
                second_one.style.display = "none";
                third_one.style.display = "none";
                var showd = document.getElementById(arguments[0]);
                showd.style.display = "block";
            }

        }
    </script>
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

        .auto-style2 {
            width: 69px;
            height: 76px;
        }
        /*#left_nav{
            width:200px;
            height:auto;
            background-color:#202340;
        }*/
        .List {
            text-decoration: none;
            display: block;
            width: 100%;
            line-height: 35px;
            height: 35px;
            text-align: center;
            background-color: white;
            color: black;
            font-family: "微软雅黑";
            font-size: 13px;
            font-weight: 700;
            /*border-left:solid white px;
            border-right:solid white px;*/
            border-top: solid 2px grey;
            border-bottom: solid 2px grey;
        }

        .Link {
            text-decoration: none;
            display: block;
            text-align: center;
            height: 40px;
            color: black;
            font-family: "微软雅黑";
            font-size: 16px;
            font-weight: 700;
            line-height: 40px;
            border-bottom: solid 3px grey;
        }

            .Link:hover {
                background-color: #373954;
            }

        .List:hover {
            text-shadow: black 0.1em 0.1em 0.1em;
        }
    </style>
</head>
<body style="margin: 0px; height: 100%;">
    <div>
        <form id="form1" runat="server">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 96px; background-color: #0A3F61;">
                <tr>
                    <td style="width: 12%; text-align: center">

                        <img alt="" class="auto-style2" src="img/untitled.bmp" /></td>
                    <td style="font-weight: bold; font-size: 26px; color: #FFFFFF; font-family: 'Bell MT';" class="auto-style1">科研数据浏览信息系统——华西核磁共振研究中心HMRRC<br />
                    </td>
                    <td style="vertical-align: middle; text-align: left">
                        <asp:Panel ID="pnlLogin" runat="server" Height="30px" Width="100%">
                            用户名：<asp:TextBox ID="txbUserName" runat="server"></asp:TextBox>密码：
                        <!-- 对于密码TextBox，应把TextMode属性设置为Password，这样输入的值会以****形式出现，保护密码在输入时不被别人看到 -->
                            <asp:TextBox ID="txbUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" />
                        </asp:Panel>
                        <asp:Panel ID="pnlWelcome" runat="server" Height="30px" Width="100%" ForeColor="White">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnQuit" runat="server" CausesValidation="False" Text="退出" Width="70px" OnClick="btnQuit_Click" />
                        </asp:Panel>
                    </td>
                </tr>
                <tr style="height: 6px; background-color: #000000">
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>

            <!--表内容-->
            <div id="main" style="height: 800px">

                <div id="left" style="float: left; width: 12%; height: 100%; background-color: #0A3F61;" runat="server">
                    <%--<asp:Button ID="btnPatientInfo" runat="server" Text="资料管理" Width="100%" OnClick="PatientInfo_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnReloinfo" runat="server" Text="用户管理" Width="100%" OnClick="Reloinfo_Click" />
                    <br />--%>
                    <div id="left_nav">
                        <a href="#" class="Link" onclick="show('First_one')" style="color: #FFFFFF">用户管理</a>
                        <div id="First_one" style="display: block;">
                            <a href="#" class="List">添加用户</a>
                            <a href="#" class="List">用户信息</a>
                            <%--<a href="#" class="List">Three</a>--%>
                        </div>
                        <a href="#" class="Link" onclick="show('Second_one')" style="color: #FFFFFF">项目管理</a>
                        <div id="Second_one" style="display: none;">
                            <a href="../viewProject.aspx" target="mainIfr" class="List">查看项目数据</a>
                            <a href="#" class="List">添加项目</a>
                            <%--<a href="#" class="List">Three</a> --%>
                        </div>
                        <a href="#" class="Link" onclick="show('Third_one')" style="color: #FFFFFF">扫描数据管理</a>
                        <div id="Third_one" style="display: none;">
                            <a href="#" class="List">查看扫描数据</a>
                            <%--  <a href="#" class="List">Two</a>
                    <a href="#" class="List">Three</a>--%>
                        </div>
                    </div>
                </div>
                <iframe id="mainIfr" runat="server" name="mainIfr" frameborder="no" style="padding: 0px; margin: 0px; float: right" width="88%" height="100%" src=""></iframe>
                <br />
            </div>
        </form>

        <div id="Bottom" style="background-color: #0A3F61; color: #FFFFFF; font-size: small;">
            <span class="firstSpan">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp; 科研数据浏览信息系统欢迎您:&nbsp;<%:Session["UserName"].ToString()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2018华西医院磁共振临床研究中心 版权所有. </span>
        </div>
    </div>
</body>
</html>