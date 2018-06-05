<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectResearcherByID.aspx.cs" Inherits="researchDataBrowsingInformationSystem.projectResearcherByID" %>

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
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ID" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback">
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
                    <dx:GridViewDataTextColumn Caption="序号" FieldName="ID" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="项目ID" FieldName="project_id" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="参与者ID" FieldName="User_id" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="权限" FieldName="Right" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="备注" FieldName="Remark" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM project_researcher where(ID = ?)"
                InsertCommand="INSERT INTO project_researcher (ID, project_id, User_id, `Right`, Remark) VALUES        (?,?,?,?,?)"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                SelectCommand="SELECT project_researcher.* FROM project_researcher where  project_id = ?"
                UpdateCommand="UPDATE       project_researcher SET  project_id = ?, User_id = ?, `Right` = ?, Remark = ? Where(ID = ?)"
                ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:Parameter Name=" project_id" Type="String" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_project_id" Type="String" />
                    <asp:Parameter Name="original_User_id" Type="String" />
                    <asp:Parameter Name="original_Right" Type="Int16" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_project_id" Type="String" />
                    <asp:Parameter Name="original_User_id" Type="String" />
                    <asp:Parameter Name="original_Right" Type="Int16" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="project_id" Type="String" />
                    <asp:Parameter Name="User_id" Type="String" />
                    <asp:Parameter Name="Right" Type="String" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_project_id" Type="String" />
                    <asp:Parameter Name="original_User_id" Type="String" />
                    <asp:Parameter Name="original_Right" Type="Int16" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>