<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectManage.aspx.cs" Inherits="researchDataBrowsingInformationSystem.projectManage" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

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
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" KeyFieldName="ID" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <ClientSideEvents CustomButtonClick="onGrid1ButtonClick" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn Caption="操作" ShowClearFilterButton="True" ShowInCustomizationForm="True" VisibleIndex="5">
                        <CustomButtons>
                            <%--<dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>--%>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="IsPass" VisibleIndex="3" Caption="是否结题" Width="80px">
                        <EditFormSettings VisibleIndex="3" Visible="True" Caption="是否结题" />
                        <CellStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="否" Value="0" />
                                <dx:ListEditItem Text="是" Value="1" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn Caption="项目ID" FieldName="ID" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="项目名" FieldName="Name" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="是否锁住" FieldName="Isblock" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <%--<dx:GridViewDataTextColumn Caption="是否结题" FieldName="IsPass" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>--%>
                    <dx:GridViewDataTextColumn Caption="备注" FieldName="Remark" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM project where(ID=?)"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                SelectCommand="SELECT        project.* FROM            project"
                UpdateCommand="UPDATE  project SET  Name = ?, Isblock =?, IsPass =?, Remark =? where(ID=?)" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Isblock" Type="Int16" />
                    <asp:Parameter Name="original_IsPass" Type="Int16" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Isblock" Type="Int16" />
                    <asp:Parameter Name="IsPass" Type="Int16" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_ID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Isblock" Type="Int16" />
                    <asp:Parameter Name="original_IsPass" Type="Int16" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>