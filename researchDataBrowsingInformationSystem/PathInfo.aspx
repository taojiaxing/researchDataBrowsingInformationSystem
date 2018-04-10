<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PathInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.PathInfo" %>

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

                case "View":
                    //window.open('CheckInfo.aspx', '', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,width=750,height=470,left=80,top=40');
                    window.showModelessDialog('CheckInfo.aspx', '', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,width=750,height=470,left=80,top=40');
                    break;

                case "Button3": break;
                default:
                    e.processOnServer = true;
                    break;
            }
        }
    </script>
</head>
<body>
    <div style="margin-left: 14%">
        <form id="form1" runat="server">
            <div>
            </div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <ClientSideEvents CustomButtonClick="onGrid1ButtonClick" />
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="6" Caption="操作">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="Basic" Text="基本信息">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="CheckInfo" Text="检查信息">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn Caption="病人ID号" FieldName="Id" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人检查编号" FieldName="StuID" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="检查的项目" FieldName="Progect" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="检查结果存放路径" FieldName="Path" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn Caption="检查时间" FieldName="Date" VisibleIndex="4">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM PathInfo WHERE (Id = ?)"
                InsertCommand="INSERT INTO pathinfo(Id, StuID, Progect, Path, `Date`, Remark) VALUES (?, ?, ?, ?, ?, ?)"
                OldValuesParameterFormatString="original_{0}"
                SelectCommand="SELECT   * FROM      pathinfo"
                UpdateCommand="UPDATE  pathinfo SET    Id = ?, StuID = ?, Progect = ?, Path = ?, `Date` = ?, Remark = ? WHERE(Id = ?)"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_StuID" Type="String" />
                    <asp:Parameter Name="original_Progect" Type="String" />
                    <asp:Parameter Name="original_Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Date" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="StuID" Type="String" />
                    <asp:Parameter Name="Progect" Type="String" />
                    <asp:Parameter Name="Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="Remark" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StuID" Type="String" />
                    <asp:Parameter Name="Progect" Type="String" />
                    <asp:Parameter Name="Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_StuID" Type="String" />
                    <asp:Parameter Name="original_Progect" Type="String" />
                    <asp:Parameter Name="original_Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Date" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </div>
</body>
</html>