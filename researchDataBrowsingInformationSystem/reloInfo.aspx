<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reloInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.reloInfo" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Xpo.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script language="javascript">
        function onGrid1ButtonClick(s, e) {

            switch (e.buttonID) {
                case "Delete":
                    // 用于操作前确认
                    if (confirm("确定要执行这个操作么？"))
                        e.processOnServer = true;
                    break;
                default:
                    e.processOnServer = true;
                    break;
            }
        }
    </script>
</head>
<body>
    <div>
        <form id="form1" runat="server">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback" Theme="Default">
                <SettingsPager NumericButtonCount="8" PageSize="8">
                </SettingsPager>
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <ClientSideEvents CustomButtonClick="onGrid1ButtonClick" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn Caption="操作" ShowClearFilterButton="True" ShowInCustomizationForm="True" VisibleIndex="5">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="Role" VisibleIndex="3" Caption="用户角色" Width="80px">
                        <EditFormSettings VisibleIndex="3" Visible="True" Caption="用户角色" />
                        <CellStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="系统管理员" Value="0" />
                                <dx:ListEditItem Text="项目负责人" Value="1" />
                                <dx:ListEditItem Text="科研人员" Value="2" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn Caption="用户ID号" FieldName="ID" VisibleIndex="0" ReadOnly="True">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="用户姓名" FieldName="Name" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="用户密码" FieldName="Psd" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM `user` WHERE (ID = ?)"
                InsertCommand="INSERT INTO `user`  (ID, Name, Psd, Role, Remark) VALUES   (?,?,?,?,?)"
                SelectCommand="SELECT * from `user`"
                UpdateCommand="UPDATE  `user` SET  Name = ?, Psd = ?, Role = ?, Remark = ? WHERE(ID = ?)"
                ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Psd" Type="String" />
                    <asp:Parameter Name="original_Role" Type="Int32" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Psd" Type="String" />
                    <asp:Parameter Name="Role" Type="Int32" />
                    <asp:Parameter Name="Remark" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <%--<asp:Parameter Name="Id" Type="String" />--%>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Psd" Type="String" />
                    <asp:Parameter Name="Role" Type="Int32" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Psd" Type="String" />
                    <asp:Parameter Name="original_Role" Type="Int32" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </div>
</body>
</html>