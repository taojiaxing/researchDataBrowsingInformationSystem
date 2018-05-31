<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addResearcher.aspx.cs" Inherits="researchDataBrowsingInformationSystem.addResearcher" %>

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
                    <td style="width: 10%">项目：<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataValueField="project_id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                            SelectCommand="SELECT   * FROM   project_researcher where User_id = ?">
                            <SelectParameters>
                                <asp:Parameter Name="User_id" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 20%">用户：<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataValueField="ID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                            SelectCommand="SELECT   * FROM   `user`"></asp:SqlDataSource>
                    </td>

                    <td style="width: 60%">
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>